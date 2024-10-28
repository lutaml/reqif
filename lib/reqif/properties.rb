require "lutaml/model"

module Reqif
  class Properties < Lutaml::Model::Serializable
    attribute :embedded_value, EmbeddedValue

    xml do
      root "PROPERTIES"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "EMBEDDED-VALUE", to: :embedded_value
    end
  end
end
