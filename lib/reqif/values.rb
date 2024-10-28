require "lutaml/model"

module Reqif
  class Values < Lutaml::Model::Serializable
    attribute :attribute_value_boolean, AttributeValueBoolean, collection: true
    attribute :attribute_value_date, AttributeValueDate, collection: true
    attribute :attribute_value_enumeration, AttributeValueEnumeration, collection: true
    attribute :attribute_value_integer, AttributeValueInteger, collection: true
    attribute :attribute_value_real, AttributeValueReal, collection: true
    attribute :attribute_value_string, AttributeValueString, collection: true
    attribute :attribute_value_xhtml, AttributeValueXhtml, collection: true
    attribute :enum_value_ref, :string, collection: true

    # TODO: if ENUM-VALUE-REF is present, all others cannot be present.
    xml do
      root "VALUES"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "ATTRIBUTE-VALUE-BOOLEAN", to: :attribute_value_boolean
      map_element "ATTRIBUTE-VALUE-DATE", to: :attribute_value_date
      map_element "ATTRIBUTE-VALUE-ENUMERATION", to: :attribute_value_enumeration
      map_element "ATTRIBUTE-VALUE-INTEGER", to: :attribute_value_integer
      map_element "ATTRIBUTE-VALUE-REAL", to: :attribute_value_real
      map_element "ATTRIBUTE-VALUE-STRING", to: :attribute_value_string
      map_element "ATTRIBUTE-VALUE-XHTML", to: :attribute_value_xhtml

      map_element "ENUM-VALUE-REF", to: :enum_value_ref
    end
  end
end
