require "lutaml/model"

module Reqif
  class SpecRelation < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :last_change, :time
    attribute :long_name, :string
    attribute :alternative_id, AlternativeId
    attribute :values, Values
    attribute :source, Source
    attribute :target, Target
    attribute :type, Type

    xml do
      root "SPEC-RELATION"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "DESC", to: :desc
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_element "ALTERNATIVE-ID", to: :alternative_id
      map_element "VALUES", to: :values
      map_element "SOURCE", to: :source
      map_element "TARGET", to: :target
      map_element "TYPE", to: :type
    end
  end
end
