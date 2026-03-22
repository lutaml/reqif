require "lutaml/model"

module Reqif
  class Children < Lutaml::Model::Serializable
    attribute :spec_hierarchy, SpecHierarchy, collection: true

    xml do
      element "CHILDREN"
      namespace Namespace
      ordered

      map_element "SPEC-HIERARCHY", to: :spec_hierarchy
    end
  end
end
