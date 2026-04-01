require "lutaml/model"

module Reqif
  class Type < Lutaml::Model::Serializable
    attribute :datatype_definition_boolean_ref, StringType
    attribute :specification_type_ref, StringType
    attribute :relation_group_type_ref, StringType
    attribute :datatype_definition_date_ref, StringType
    attribute :datatype_definition_enumeration_ref, StringType
    attribute :datatype_definition_integer_ref, StringType
    attribute :datatype_definition_real_ref, StringType
    attribute :datatype_definition_string_ref, StringType
    attribute :datatype_definition_xhtml_ref, StringType
    attribute :spec_object_type_ref, StringType
    attribute :spec_relation_type_ref, StringType

    xml do
      element "TYPE"
      namespace Namespace
      ordered

      # TODO: Only one of these values can be active at the same time
      map_element "DATATYPE-DEFINITION-BOOLEAN-REF",
                  to: :datatype_definition_boolean_ref
      map_element "SPECIFICATION-TYPE-REF", to: :specification_type_ref
      map_element "RELATION-GROUP-TYPE-REF", to: :relation_group_type_ref
      map_element "DATATYPE-DEFINITION-DATE-REF",
                  to: :datatype_definition_date_ref
      map_element "DATATYPE-DEFINITION-ENUMERATION-REF",
                  to: :datatype_definition_enumeration_ref
      map_element "DATATYPE-DEFINITION-INTEGER-REF",
                  to: :datatype_definition_integer_ref
      map_element "DATATYPE-DEFINITION-REAL-REF",
                  to: :datatype_definition_real_ref
      map_element "DATATYPE-DEFINITION-STRING-REF",
                  to: :datatype_definition_string_ref
      map_element "DATATYPE-DEFINITION-XHTML-REF",
                  to: :datatype_definition_xhtml_ref
      map_element "SPEC-OBJECT-TYPE-REF", to: :spec_object_type_ref
      map_element "SPEC-RELATION-TYPE-REF", to: :spec_relation_type_ref
    end
  end
end
