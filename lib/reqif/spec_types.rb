require "lutaml/model"

module Reqif
  class SpecTypes < Lutaml::Model::Serializable
    attribute :relation_group_type, RelationGroupType, collection: true
    attribute :spec_object_type, SpecObjectType, collection: true
    attribute :spec_relation_type, SpecRelationType, collection: true
    attribute :specification_type, SpecificationType, collection: true

    xml do
      root "SPEC-TYPES"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "RELATION-GROUP-TYPE", to: :relation_group_type
      map_element "SPEC-OBJECT-TYPE", to: :spec_object_type
      map_element "SPEC-RELATION-TYPE", to: :spec_relation_type
      map_element "SPECIFICATION-TYPE", to: :specification_type
    end
  end
end
