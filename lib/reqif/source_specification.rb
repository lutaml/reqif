require "lutaml/model"

module Reqif
  class SourceSpecification < Lutaml::Model::Serializable
    attribute :specification_ref, StringType

    xml do
      element "SOURCE-SPECIFICATION"
      namespace Namespace

      map_element "SPECIFICATION-REF", to: :specification_ref
    end
  end
end
