require "lutaml/model"

module Reqif
  class XhtmlContent < Lutaml::Model::Serializable
    attribute :div, ::Reqif::Xhtml::Div
    attribute :p, ::Reqif::Xhtml::P
    attribute :span, ::Reqif::Xhtml::Span

    xml do
      element "XHTML-CONTENT"
      namespace Namespace
      mixed_content

      map_element 'div', to: :div
      map_element 'p', to: :p
      map_element 'span', to: :span
    end
  end
end
