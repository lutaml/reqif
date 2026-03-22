require "lutaml/model/type/date_time"

module Reqif
  class HighPrecisionDateTime < Lutaml::Model::Type::DateTime
    attr_accessor :precision

    # The format looks like this `2012-04-07T01:51:37.112+02:00`
    # or this `2021-07-01T01:12:06.749Z`
    def self.from_xml(xml_string)
      new(::DateTime.parse(xml_string)).tap do |date_time|
        date_time.precision = extract_precision(xml_string)
      end
    end

    # Extract the precision of the milliseconds from the XML string
    def self.extract_precision(xml_string)
      if xml_string.include?(".")
        milliseconds_part = xml_string.split(".").last.split(/Z|\+|-/).first
        milliseconds_part.length
      else
        0
      end
    end

    def to_xml
      #    LAST-CHANGE="2023-10-28T18:09:00.468457+02:00"
      #    LAST-CHANGE="2023-10-28T18:09:00.468+02:00"

      # The precision must be preserved, so we need to ensure that the
      # milliseconds part is formatted correctly based on the precision
      base_pattern = "%Y-%m-%dT%H:%M:%S"
      with_precision = if @precision && @precision > 0
                          "#{base_pattern}.%#{@precision}N"
                        else
                          base_pattern
                        end
      if value.offset == 0
        value.strftime(with_precision + "Z")
      else
        value.strftime(with_precision + "%:z")
      end
    end
  end
end
