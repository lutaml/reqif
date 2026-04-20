# frozen_string_literal: true

require "bigdecimal"
require "lutaml/model/type/float"

module Reqif
  # Custom Float type that handles ReqIF float serialization.
  # Preserves decimal notation for simple values and uses scientific
  # notation only when necessary (very large/small numbers).
  class ReqifFloat < Lutaml::Model::Type::Float
    # Format a float value for ReqIF.
    # Uses decimal notation for values that can be represented cleanly,
    # otherwise uses scientific notation with uppercase E.
    #
    # @param f [Float] The float value
    # @return [String] ReqIF formatted string
    def self.reqif_format(float_value)
      # Try to represent as a clean decimal first
      decimal_str = format_float_as_decimal(float_value)
      return decimal_str if decimal_str

      # Fall back to scientific notation
      format_scientific(float_value)
    end

    # Format as decimal if it can be done cleanly
    def self.format_float_as_decimal(float_value)
      # Use a reasonable precision to avoid floating point artifacts
      # Check if the value can be represented cleanly in decimal
      decimal_str = format("%.10g", float_value)

      # Skip if it's in scientific notation (contains 'e' or 'E')
      return nil if decimal_str.include?("e") || decimal_str.include?("E")

      # Verify round-trip: parse back and check if we get the same value
      parsed = BigDecimal(decimal_str).to_f
      return decimal_str if parsed == float_value

      # Try with higher precision
      decimal_str = format("%.15g", float_value)
      return nil if decimal_str.include?("e") || decimal_str.include?("E")

      parsed = BigDecimal(decimal_str).to_f
      return decimal_str if parsed == float_value

      nil # Couldn't represent cleanly
    end

    # Format in scientific notation
    def self.format_scientific(float_value)
      formatted = format("%.15e", float_value).upcase
      mantissa, exp = formatted.split("E")

      # Strip trailing zeros from mantissa
      mantissa = mantissa.sub(/\.?0+$/, "")
      mantissa = "0" if mantissa.empty?
      # Remove decimal point if it becomes trailing (e.g. "1.")
      mantissa = mantissa.chomp(".")

      # Handle exponent sign and strip leading zeros
      sign = exp.start_with?("-") ? "-" : ""
      digits = exp.sub(/^[+-]/, "").sub(/\A0+/, "")
      digits = "0" if digits.empty?

      "#{mantissa}E#{sign}#{digits}"
    end

    def self.cast(value, options = {})
      return nil if value.nil?
      return value if Lutaml::Model::Utils.uninitialized?(value)

      unless options.equal?(EMPTY_OPTIONS)
        Lutaml::Model::Services::Type::Validator::Number.validate!(value,
                                                                   options)
      end

      case value
      when String then BigDecimal(value).to_f
      when Float then value
      when BigDecimal then value.to_f
      else Float(value.to_s)
      end
    end

    def self.to_xml(value)
      return nil if value.nil?

      result = cast(value)
      return nil if result.nil?

      reqif_format(result)
    end

    def to_xml
      self.class.to_xml(value)
    end
  end
end
