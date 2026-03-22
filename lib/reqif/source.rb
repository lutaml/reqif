require "lutaml/model"

module Reqif
  class Source < Lutaml::Model::Serializable
    attribute :spec_object_ref, StringType

    xml do
      element "SOURCE"
      namespace Namespace

      map_element "SPEC-OBJECT-REF", to: :spec_object_ref
    end
  end
end
