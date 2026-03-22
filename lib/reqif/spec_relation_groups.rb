require "lutaml/model"

module Reqif
  class SpecRelationGroups < Lutaml::Model::Serializable
    attribute :relation_group, RelationGroup, collection: true

    xml do
      element "SPEC-RELATION-GROUPS"
      namespace Namespace

      map_element "RELATION-GROUP", to: :relation_group
    end
  end
end
