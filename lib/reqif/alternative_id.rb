require "lutaml/model"

module Reqif
  class AlternativeId < Lutaml::Model::Serializable
    attribute :identifier, :string

    xml do
      root "ALTERNATIVE-ID"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_attribute "IDENTIFIER", to: :identifier
    end
  end
end
