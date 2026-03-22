require "lutaml/model"

module Reqif
  class Definition < Lutaml::Model::Serializable
    attribute :attribute_definition_boolean_ref, StringType
    attribute :attribute_definition_date_ref, StringType
    attribute :attribute_definition_enumeration_ref, StringType
    attribute :attribute_definition_integer_ref, StringType
    attribute :attribute_definition_real_ref, StringType
    attribute :attribute_definition_string_ref, StringType
    attribute :attribute_definition_xhtml_ref, StringType

    xml do
      element "DEFINITION"
      namespace Namespace

      # TODO: Only one of these values can be active at the same time
      map_element "ATTRIBUTE-DEFINITION-BOOLEAN-REF", to: :attribute_definition_boolean_ref
      map_element "ATTRIBUTE-DEFINITION-DATE-REF", to: :attribute_definition_date_ref
      map_element "ATTRIBUTE-DEFINITION-ENUMERATION-REF", to: :attribute_definition_enumeration_ref
      map_element "ATTRIBUTE-DEFINITION-INTEGER-REF", to: :attribute_definition_integer_ref
      map_element "ATTRIBUTE-DEFINITION-REAL-REF", to: :attribute_definition_real_ref
      map_element "ATTRIBUTE-DEFINITION-STRING-REF", to: :attribute_definition_string_ref
      map_element "ATTRIBUTE-DEFINITION-XHTML-REF", to: :attribute_definition_xhtml_ref
    end
  end
end
