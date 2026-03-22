require "lutaml/model"

module Reqif
  class AttributeValueEnumeration < Lutaml::Model::Serializable
    attribute :definition, Definition
    attribute :values, Values

    xml do
      element "ATTRIBUTE-VALUE-ENUMERATION"
      namespace Namespace
      ordered

      map_element "DEFINITION", to: :definition
      map_element "VALUES", to: :values
    end
  end
end
