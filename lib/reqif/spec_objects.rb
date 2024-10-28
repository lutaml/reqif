require "lutaml/model"

module Reqif
  class SpecObjects < Lutaml::Model::Serializable
    attribute :spec_object, SpecObject, collection: true

    xml do
      root "SPEC-OBJECTS"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "SPEC-OBJECT", to: :spec_object
    end
  end
end
