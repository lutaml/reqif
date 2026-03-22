# frozen_string_literal: true

require "bigdecimal"
require "lutaml/model/type/float"

module Reqif
  # Custom Float type that serializes scientific notation with uppercase E
  # in ReqIF format (mantissa in [1, 10), no + sign on positive exponents).
  class ReqifFloat < Lutaml::Model::Type::Float
    # Format a float value in ReqIF scientific notation.
    # Uses %.15e (15 significant figures) and cleans up formatting:
    # - Uppercase E for exponent
    # - No + sign on positive exponents
    # - No trailing zeros in mantissa or leading zeros in exponent
    #
    # @param f [Float] The float value
    # @return [String] ReqIF formatted string (e.g. "3.4028235E38")
    def self.reqif_format(float_value)
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

      Lutaml::Model::Services::Type::Validator::Number.validate!(value, options) unless options.equal?(EMPTY_OPTIONS)

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
