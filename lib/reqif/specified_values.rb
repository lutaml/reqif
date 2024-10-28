require "lutaml/model"

module Reqif
  class SpecifiedValues < Lutaml::Model::Serializable
    attribute :enum_value, EnumValue, collection: true

    xml do
      root "SPECIFIED-VALUES"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "ENUM-VALUE", to: :enum_value
    end
  end
end
