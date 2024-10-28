require "lutaml/model"

module Reqif
  class SpecAttributes < Lutaml::Model::Serializable
    attribute :attribute_definition_boolean, AttributeDefinitionBoolean, collection: true
    attribute :attribute_definition_date, AttributeDefinitionDate, collection: true
    attribute :attribute_definition_enumeration, AttributeDefinitionEnumeration, collection: true
    attribute :attribute_definition_integer, AttributeDefinitionInteger, collection: true
    attribute :attribute_definition_real, AttributeDefinitionReal, collection: true
    attribute :attribute_definition_string, AttributeDefinitionString, collection: true
    attribute :attribute_definition_xhtml, AttributeDefinitionXhtml, collection: true

    xml do
      root "SPEC-ATTRIBUTES"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "ATTRIBUTE-DEFINITION-BOOLEAN", to: :attribute_definition_boolean
      map_element "ATTRIBUTE-DEFINITION-DATE", to: :attribute_definition_date
      map_element "ATTRIBUTE-DEFINITION-ENUMERATION", to: :attribute_definition_enumeration
      map_element "ATTRIBUTE-DEFINITION-INTEGER", to: :attribute_definition_integer
      map_element "ATTRIBUTE-DEFINITION-REAL", to: :attribute_definition_real
      map_element "ATTRIBUTE-DEFINITION-STRING", to: :attribute_definition_string
      map_element "ATTRIBUTE-DEFINITION-XHTML", to: :attribute_definition_xhtml
    end
  end
end
