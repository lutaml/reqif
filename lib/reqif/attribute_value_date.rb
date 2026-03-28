require "lutaml/model"

module Reqif
  class AttributeValueDate < Lutaml::Model::Serializable
    attribute :the_value, HighPrecisionDateTime
    attribute :definition, Definition

    xml do
      element "ATTRIBUTE-VALUE-DATE"
      namespace Namespace
      ordered

      map_attribute "THE-VALUE", to: :the_value
      map_element "DEFINITION", to: :definition
    end
  end
end
