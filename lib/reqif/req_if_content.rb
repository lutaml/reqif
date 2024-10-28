require "lutaml/model"

module Reqif
  class ReqIfContent < Lutaml::Model::Serializable
    attribute :datatypes, Datatypes
    attribute :spec_types, SpecTypes
    attribute :spec_objects, SpecObjects
    attribute :spec_relations, SpecRelations
    attribute :specifications, Specifications
    attribute :spec_relation_groups, SpecRelationGroups

    xml do
      root "REQ-IF-CONTENT"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "DATATYPES", to: :datatypes
      map_element "SPEC-TYPES", to: :spec_types
      map_element "SPEC-OBJECTS", to: :spec_objects
      map_element "SPEC-RELATIONS", to: :spec_relations
      map_element "SPECIFICATIONS", to: :specifications
      map_element "SPEC-RELATION-GROUPS", to: :spec_relation_groups
    end
  end
end
