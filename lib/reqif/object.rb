require "lutaml/model"

module Reqif
  class Object < Lutaml::Model::Serializable
    attribute :spec_object_ref, StringType

    xml do
      element "OBJECT"
      namespace Namespace

      map_element "SPEC-OBJECT-REF", to: :spec_object_ref
    end
  end
end
