require "lutaml/model"

module Reqif
  class SpecObjects < Lutaml::Model::Serializable
    attribute :spec_object, SpecObject, collection: true

    xml do
      element "SPEC-OBJECTS"
      namespace Namespace
      ordered

      map_element "SPEC-OBJECT", to: :spec_object
    end
  end
end
