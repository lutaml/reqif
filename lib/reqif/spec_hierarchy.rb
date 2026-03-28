require "lutaml/model"

module Reqif
  class SpecHierarchy < Lutaml::Model::Serializable
    attribute :desc, :string
    attribute :identifier, :string
    attribute :is_editable, :boolean
    attribute :is_table_internal, :boolean
    attribute :last_change, HighPrecisionDateTime
    attribute :long_name, :string
    attribute :alternative_id, AlternativeId
    attribute :children, Children
    attribute :editable_atts, EditableAtts
    attribute :object, Object

    xml do
      element "SPEC-HIERARCHY"
      namespace Namespace
      ordered

      map_attribute "DESC", to: :desc, render_empty: true
      map_attribute "IDENTIFIER", to: :identifier
      map_attribute "IS-EDITABLE", to: :is_editable
      map_attribute "IS-TABLE-INTERNAL", to: :is_table_internal
      map_attribute "LAST-CHANGE", to: :last_change
      map_attribute "LONG-NAME", to: :long_name
      map_element "ALTERNATIVE-ID", to: :alternative_id
      map_element "CHILDREN", to: :children
      map_element "EDITABLE-ATTS", to: :editable_atts
      map_element "OBJECT", to: :object
    end
  end
end
