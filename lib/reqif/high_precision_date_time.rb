# frozen_string_literal: true

require "lutaml/model/type/date_time"

module Reqif
  # High precision DateTime type that preserves fractional seconds precision
  class HighPrecisionDateTime < Lutaml::Model::Type::DateTime
    attr_accessor :precision
    attr_accessor :has_explicit_timezone

    def initialize(value = nil)
      super
      @precision = 0
    end

    # The format looks like this `2012-04-07T01:51:37.112+02:00`
    # or this `2021-07-01T01:12:06.749Z`
    def self.from_xml(xml_string)
      new(::DateTime.parse(xml_string)).tap do |date_time|
        date_time.precision = extract_precision(xml_string)
        date_time.has_explicit_timezone = xml_string.match?(/[Zz]|[+-]\d{2}:\d{2}$/)
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
      base = "%Y-%m-%dT%H:%M:%S"
      pattern = precision.positive? ? "#{base}.%#{precision}N" : base
      if has_explicit_timezone
        value.offset.zero? ? value.strftime("#{pattern}Z") : value.strftime("#{pattern}%:z")
      else
        value.strftime(pattern)
      end
    end

    def iso8601(precision = nil)
      if precision.nil? || precision.zero?
        value.iso8601
      else
        value.strftime("%Y-%m-%dT%H:%M:%S.%#{precision}N%z")
      end
    end
  end
end
