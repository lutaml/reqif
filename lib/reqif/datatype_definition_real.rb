require "lutaml/model"

module Reqif
  class DatatypeDefinitionReal < Lutaml::Model::Serializable
    attribute :accuracy, :integer
    attribute :desc, :string
    attribute :identifier, :string
    attribute :last_change, HighPrecisionDateTime
    attribute :long_name, :string
    attribute :max, ReqifFloat
    attribute :min, ReqifFloat
    attribute :alternative_id, AlternativeId

    xml do
      element "DATATYPE-DEFINITION-REAL"
      namespace Namespace

      map_attribute "ACCURACY", to: :accuracy
      map_attribute "DESC", to: :desc
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_attribute "MAX", to: :max
      map_attribute "MIN", to: :min
      map_element "ALTERNATIVE-ID", to: :alternative_id
    end
  end
end
