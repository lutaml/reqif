require "lutaml/model"

module Reqif
  class EnumValue < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :last_change, HighPrecisionDateTime
    attribute :long_name, :string
    attribute :alternative_id, AlternativeId
    attribute :properties, Properties

    xml do
      element "ENUM-VALUE"
      namespace Namespace

      map_attribute "DESC", to: :desc, render_empty: true
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_element "ALTERNATIVE-ID", to: :alternative_id
      map_element "PROPERTIES", to: :properties
    end
  end
end
