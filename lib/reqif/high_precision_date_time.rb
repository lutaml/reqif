require "lutaml/model/type/date_time"

module Reqif
  class HighPrecisionDateTime < Lutaml::Model::Type::DateTime
    def self.serialize(value)
      return nil if value.nil?

      cast(value)&.iso8601(8)
    end

    def to_json
      value.to_time.iso8601(8)
    end

    def to_xml
      value.to_time.iso8601(8)
    end
  end
end
