require "lutaml/model"

module Reqif
  class AttributeValueInteger < Lutaml::Model::Serializable
    attribute :the_value, :integer
    attribute :definition, Definition

    xml do
      root "ATTRIBUTE-VALUE-INTEGER"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "THE-VALUE", to: :the_value
      map_element "DEFINITION", to: :definition
    end
  end
end
