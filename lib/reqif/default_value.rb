require "lutaml/model"

module Reqif
  class DefaultValue < Lutaml::Model::Serializable
    attribute :attribute_value_boolean, AttributeValueBoolean
    attribute :attribute_value_date, AttributeValueDate
    attribute :attribute_value_enumeration, AttributeValueEnumeration
    attribute :attribute_value_integer, AttributeValueInteger
    attribute :attribute_value_real, AttributeValueReal
    attribute :attribute_value_string, AttributeValueString
    attribute :attribute_value_xhtml, AttributeValueXhtml

    xml do
      root "DEFAULT-VALUE"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      # TODO: Only one of these values can be active at the same time
      map_element "ATTRIBUTE-VALUE-BOOLEAN", to: :attribute_value_boolean
      map_element "ATTRIBUTE-VALUE-DATE", to: :attribute_value_date
      map_element "ATTRIBUTE-VALUE-ENUMERATION", to: :attribute_value_enumeration
      map_element "ATTRIBUTE-VALUE-INTEGER", to: :attribute_value_integer
      map_element "ATTRIBUTE-VALUE-REAL", to: :attribute_value_real
      map_element "ATTRIBUTE-VALUE-STRING", to: :attribute_value_string
      map_element "ATTRIBUTE-VALUE-XHTML", to: :attribute_value_xhtml
    end
  end
end
