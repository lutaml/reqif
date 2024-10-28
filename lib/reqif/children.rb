require "lutaml/model"

module Reqif
  class Children < Lutaml::Model::Serializable
    attribute :spec_hierarchy, SpecHierarchy, collection: true

    xml do
      root "CHILDREN"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "SPEC-HIERARCHY", to: :spec_hierarchy
    end
  end
end
