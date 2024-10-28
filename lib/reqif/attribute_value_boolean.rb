require "lutaml/model"

module Reqif
  class AttributeValueBoolean < Lutaml::Model::Serializable
    attribute :the_value, :boolean
    attribute :definition, Definition

    xml do
      root "ATTRIBUTE-VALUE-BOOLEAN"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "THE-VALUE", to: :the_value
      map_element "DEFINITION", to: :definition
    end
  end
end
