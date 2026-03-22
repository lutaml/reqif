require "lutaml/model"

module Reqif
  class DatatypeDefinitionDate < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :last_change, HighPrecisionDateTime
    attribute :long_name, :string
    attribute :alternative_id, AlternativeId

    xml do
      element "DATATYPE-DEFINITION-DATE"
      namespace Namespace

      map_attribute "DESC", to: :desc
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_element "ALTERNATIVE-ID", to: :alternative_id
    end
  end
end
