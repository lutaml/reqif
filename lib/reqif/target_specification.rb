require "lutaml/model"

module Reqif
  class TargetSpecification < Lutaml::Model::Serializable
    attribute :specification_ref, StringType

    xml do
      element "TARGET-SPECIFICATION"
      namespace Namespace

      map_element "SPECIFICATION-REF", to: :specification_ref
    end
  end
end
