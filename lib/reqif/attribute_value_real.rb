require "lutaml/model"

module Reqif
  class AttributeValueReal < Lutaml::Model::Serializable
    attribute :the_value, :float
    attribute :definition, Definition

    xml do
      root "ATTRIBUTE-VALUE-REAL"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_attribute "THE-VALUE", to: :the_value
      map_element "DEFINITION", to: :definition
    end
  end
end
