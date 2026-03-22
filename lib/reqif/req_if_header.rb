module Reqif
  class ReqIfHeader < Lutaml::Model::Serializable
    attribute :identifier, :string
    attribute :comment, :string
    attribute :creation_time, :date_time
    attribute :repository_id, :string
    attribute :req_if_tool_id, :string
    attribute :req_if_version, :string
    attribute :source_tool_id, :string
    attribute :title, :string

    xml do
      element "REQ-IF-HEADER"
      namespace Namespace
      ordered

      map_attribute "IDENTIFIER", to: :identifier
      map_element "COMMENT", to: :comment
      map_element "CREATION-TIME", to: :creation_time
      map_element "REPOSITORY-ID", to: :repository_id
      map_element "REQ-IF-TOOL-ID", to: :req_if_tool_id
      map_element "REQ-IF-VERSION", to: :req_if_version
      map_element "SOURCE-TOOL-ID", to: :source_tool_id
      map_element "TITLE", to: :title
    end
  end
end
