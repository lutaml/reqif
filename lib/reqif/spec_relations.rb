require "lutaml/model"

module Reqif
  class SpecRelations < Lutaml::Model::Serializable
    attribute :spec_relation, SpecRelation, collection: true
    attribute :spec_relation_ref, StringType, collection: true

    xml do
      element "SPEC-RELATIONS"
      namespace Namespace

      # TODO: Only one of these values can be active at the same time
      map_element "SPEC-RELATION", to: :spec_relation
      map_element "SPEC-RELATION-REF", to: :spec_relation_ref
    end
  end
end
