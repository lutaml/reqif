require "lutaml/model/type/date_time"

module Reqif
  class HighPrecisionDateTime < Lutaml::Model::Type::DateTime

    # The format looks like this `2012-04-07T01:51:37.112+02:00`
    def self.from_xml(xml_string)
      ::DateTime.parse(xml_string)
    end

    # The %L adds milliseconds to the time
    def to_xml
      value.strftime("%Y-%m-%dT%H:%M:%S.%L99999%:z")
    end
  end
end
