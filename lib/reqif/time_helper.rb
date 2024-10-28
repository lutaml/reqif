require "time"

module Reqif
  module TimeHelper
    def self.parse_time(time_str)
      return nil if time_str.nil? || time_str.empty?
      Time.parse(time_str)
    rescue ArgumentError
      nil
    end
  end
end
