require "lutaml/model"

module Reqif
  class AttributeValueReal < Lutaml::Model::Serializable
    attribute :the_value, ReqifFloat
    attribute :definition, Definition

    xml do
      element "ATTRIBUTE-VALUE-REAL"
      namespace Namespace
      ordered

      map_attribute "THE-VALUE", to: :the_value
      map_element "DEFINITION", to: :definition
    end
  end
end
