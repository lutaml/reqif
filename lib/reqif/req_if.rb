require "lutaml/model"

module Reqif
  class ReqIf < Lutaml::Model::Serializable
    attribute :the_header, TheHeader
    attribute :core_content, CoreContent
    attribute :tool_extensions, ToolExtensions

    xml do
      root "REQ-IF"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "THE-HEADER", to: :the_header
      map_element "CORE-CONTENT", to: :core_content
      map_element "TOOL-EXTENSIONS", to: :tool_extensions
    end
  end
end
