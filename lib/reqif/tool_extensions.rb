require "lutaml/model"

module Reqif
  class ToolExtensions < Lutaml::Model::Serializable
    attribute :req_if_tool_extension, ReqIfToolExtension, collection: true

    xml do
      element "TOOL-EXTENSIONS"
      namespace Namespace

      map_element "REQ-IF-TOOL-EXTENSION", to: :req_if_tool_extension
    end
  end
end
