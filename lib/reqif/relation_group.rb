require "lutaml/model"

module Reqif
  class RelationGroup < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :last_change, :time
    attribute :long_name, :string
    attribute :alternative_id, AlternativeId
    attribute :source_specification, SourceSpecification
    attribute :spec_relations, SpecRelations
    attribute :target_specification, TargetSpecification
    attribute :type, Type

    xml do
      root "RELATION-GROUP"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "DESC", to: :desc
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_element "ALTERNATIVE-ID", to: :alternative_id
      map_element "SOURCE-SPECIFICATION", to: :source_specification
      map_element "SPEC-RELATIONS", to: :spec_relations
      map_element "TARGET-SPECIFICATION", to: :target_specification
      map_element "TYPE", to: :type
    end
  end
end
