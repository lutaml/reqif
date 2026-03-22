require "lutaml/model"

module Reqif
  class Specifications < Lutaml::Model::Serializable
    attribute :specification, Specification, collection: true

    xml do
      element "SPECIFICATIONS"
      namespace Namespace
      ordered

      map_element "SPECIFICATION", to: :specification
    end
  end
end
