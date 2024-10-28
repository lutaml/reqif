require "lutaml/model"

module Reqif
  class Datatypes < Lutaml::Model::Serializable
    attribute :datatype_definition_boolean, DatatypeDefinitionBoolean, collection: true
    attribute :datatype_definition_date, DatatypeDefinitionDate, collection: true
    attribute :datatype_definition_enumeration, DatatypeDefinitionEnumeration, collection: true
    attribute :datatype_definition_integer, DatatypeDefinitionInteger, collection: true
    attribute :datatype_definition_real, DatatypeDefinitionReal, collection: true
    attribute :datatype_definition_string, DatatypeDefinitionString, collection: true
    attribute :datatype_definition_xhtml, DatatypeDefinitionXhtml, collection: true

    xml do
      root "DATATYPES", ordered: true
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "DATATYPE-DEFINITION-BOOLEAN", to: :datatype_definition_boolean
      map_element "DATATYPE-DEFINITION-DATE", to: :datatype_definition_date
      map_element "DATATYPE-DEFINITION-ENUMERATION", to: :datatype_definition_enumeration
      map_element "DATATYPE-DEFINITION-INTEGER", to: :datatype_definition_integer
      map_element "DATATYPE-DEFINITION-REAL", to: :datatype_definition_real
      map_element "DATATYPE-DEFINITION-STRING", to: :datatype_definition_string
      map_element "DATATYPE-DEFINITION-XHTML", to: :datatype_definition_xhtml
    end
  end
end
