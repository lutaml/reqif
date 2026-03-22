require "lutaml/model"

module Reqif
  class ReqIf < Lutaml::Model::Serializable
    attribute :the_header, TheHeader
    attribute :core_content, CoreContent
    attribute :tool_extensions, ToolExtensions
    attribute :lang, Lutaml::Xml::W3c::XmlLangType

    xml do
      element "REQ-IF"
      namespace Namespace
      namespace_scope [Xhtml::Namespace]

      map_attribute "lang", to: :lang
      map_element "THE-HEADER", to: :the_header
      map_element "CORE-CONTENT", to: :core_content
      map_element "TOOL-EXTENSIONS", to: :tool_extensions
    end
  end
end
