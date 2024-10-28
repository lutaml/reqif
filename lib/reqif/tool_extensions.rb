require "lutaml/model"

module Reqif
  class ToolExtensions < Lutaml::Model::Serializable
    attribute :req_if_tool_extension, ReqIfToolExtension, collection: true

    xml do
      root "TOOL-EXTENSIONS"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "REQ-IF-TOOL-EXTENSION", to: :req_if_tool_extension
    end
  end
end
