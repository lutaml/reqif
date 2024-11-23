require "lutaml/model"

module Reqif
  class AttributeDefinitionBoolean < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :is_editable, :boolean
    attribute :last_change, HighPrecisionDateTime
    attribute :long_name, :string
    attribute :alternative_id, AlternativeId
    attribute :default_value, DefaultValue
    attribute :type, Type

    xml do
      root "ATTRIBUTE-DEFINITION-BOOLEAN"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "DESC", to: :desc
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "IS-EDITABLE", to: :is_editable
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_element "ALTERNATIVE-ID", to: :alternative_id
      map_element "DEFAULT-VALUE", to: :default_value
      map_element "TYPE", to: :type
    end
  end
end
