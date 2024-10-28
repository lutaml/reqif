require "lutaml/model"

module Reqif
  class AttributeValueXhtml < Lutaml::Model::Serializable
    attribute :is_simplified, :boolean
    attribute :the_value, XhtmlContent
    attribute :the_original_value, XhtmlContent
    attribute :definition, Definition

    xml do
      root "ATTRIBUTE-VALUE-XHTML"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_attribute "IS-SIMPLIFIED", to: :is_simplified
      map_element "THE-VALUE", to: :the_value
      map_element "THE-ORIGINAL-VALUE", to: :the_original_value
      map_element "DEFINITION", to: :definition
    end
  end
end
