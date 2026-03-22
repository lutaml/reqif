require "lutaml/model"

module Reqif
  class AttributeValueInteger < Lutaml::Model::Serializable
    attribute :the_value, ReqifInteger
    attribute :definition, Definition

    xml do
      element "ATTRIBUTE-VALUE-INTEGER"
      namespace Namespace
      ordered

      map_attribute "THE-VALUE", to: :the_value
      map_element "DEFINITION", to: :definition
    end
  end
end
