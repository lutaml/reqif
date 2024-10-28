require "lutaml/model"

module Reqif
  class SpecRelationGroups < Lutaml::Model::Serializable
    attribute :relation_group, RelationGroup, collection: true

    xml do
      root "SPEC-RELATION-GROUPS"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "RELATION-GROUP", to: :relation_group
    end
  end
end
