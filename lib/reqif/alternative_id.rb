require "lutaml/model"

module Reqif
  class AlternativeId < Lutaml::Model::Serializable
    attribute :identifier, :string

    xml do
      element "ALTERNATIVE-ID"
      namespace Namespace

      map_attribute "IDENTIFIER", to: :identifier
    end
  end
end
