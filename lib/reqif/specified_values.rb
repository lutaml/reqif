require "lutaml/model"

module Reqif
  class SpecifiedValues < Lutaml::Model::Serializable
    attribute :enum_value, EnumValue, collection: true

    xml do
      element "SPECIFIED-VALUES"
      namespace Namespace

      map_element "ENUM-VALUE", to: :enum_value
    end
  end
end
