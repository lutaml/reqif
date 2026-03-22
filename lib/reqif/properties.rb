require "lutaml/model"

module Reqif
  class Properties < Lutaml::Model::Serializable
    attribute :embedded_value, EmbeddedValue

    xml do
      element "PROPERTIES"
      namespace Namespace

      map_element "EMBEDDED-VALUE", to: :embedded_value
    end
  end
end
