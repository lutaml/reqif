require "lutaml/model"

module Reqif
  class AttributeValueEnumeration < Lutaml::Model::Serializable
    attribute :definition, Definition
    attribute :values, Values

    xml do
      root "ATTRIBUTE-VALUE-ENUMERATION"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "DEFINITION", to: :definition
      map_element "VALUES", to: :values
    end
  end
end
