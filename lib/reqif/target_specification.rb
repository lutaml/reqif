require "lutaml/model"

module Reqif
  class TargetSpecification < Lutaml::Model::Serializable
    attribute :specification_ref, :string

    xml do
      root "TARGET-SPECIFICATION"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_element "SPECIFICATION-REF", to: :specification_ref
    end
  end
end
