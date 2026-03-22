# frozen_string_literal: true

require "bigdecimal"
require "lutaml/model/type/decimal"

module Reqif
  # Custom Integer type using BigDecimal internally to support
  # arbitrary precision integers beyond Ruby's native 64-bit range.
  # Serializes without a decimal point for ReqIF compatibility.
  class ReqifInteger < Lutaml::Model::Type::Decimal
    def self.cast(value, options = {})
      return nil if value.nil?

      result = super
      return nil if result.nil?

      result
    end

    # Serialize to XML as a plain integer (no decimal point, no fractional part).
    # Uses BigDecimal#to_i to strip any fractional part, ensuring output
    # matches ReqIF's integer format.
    def self.to_xml(value)
      return nil if value.nil?

      result = cast(value)
      return nil if result.nil?

      result.to_i.to_s
    end

    def to_xml
      self.class.to_xml(value)
    end
  end
end
