require "lutaml/model"

module Reqif
  class Target < Lutaml::Model::Serializable
    attribute :spec_object_ref, StringType

    xml do
      element "TARGET"
      namespace Namespace

      map_element "SPEC-OBJECT-REF", to: :spec_object_ref
    end
  end
end
