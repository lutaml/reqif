require "lutaml/model"

module Reqif
  class SourceSpecification < Lutaml::Model::Serializable
    attribute :specification_ref, :string

    xml do
      root "SOURCE-SPECIFICATION"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "SPECIFICATION-REF", to: :specification_ref
    end
  end
end
