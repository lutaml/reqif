require "lutaml/model"

module Reqif
  class Specifications < Lutaml::Model::Serializable
    attribute :specification, Specification, collection: true

    xml do
      root "SPECIFICATIONS"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "SPECIFICATION", to: :specification
    end
  end
end
