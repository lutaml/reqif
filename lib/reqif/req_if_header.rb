# lib/reqif/req_if_header.rb
require_relative "time_helper"

module Reqif
  class ReqIfHeader < Lutaml::Model::Serializable
    include TimeHelper

    attribute :identifier, :string
    attribute :comment, :string
    attribute :creation_time, :string # Changed from :time to :string
    attribute :repository_id, :string
    attribute :req_if_tool_id, :string
    attribute :req_if_version, :string
    attribute :source_tool_id, :string
    attribute :title, :string

    xml do
      root "REQ-IF-HEADER"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "IDENTIFIER", to: :identifier
      map_element "COMMENT", to: :comment
      map_element "CREATION-TIME", to: :creation_time
      map_element "REPOSITORY-ID", to: :repository_id
      map_element "REQ-IF-TOOL-ID", to: :req_if_tool_id
      map_element "REQ-IF-VERSION", to: :req_if_version
      map_element "SOURCE-TOOL-ID", to: :source_tool_id
      map_element "TITLE", to: :title
    end

    def creation_time=(time_str)
      @creation_time = time_str
    end

    def creation_time
      TimeHelper.parse_time(@creation_time)
    end
  end
end
