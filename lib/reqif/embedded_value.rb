require "lutaml/model"

module Reqif
  class EmbeddedValue < Lutaml::Model::Serializable
    attribute :key, :integer
    attribute :other_content, :string

    xml do
      element "EMBEDDED-VALUE"
      namespace Namespace

      map_attribute "KEY", to: :key
      map_attribute "OTHER-CONTENT", to: :other_content
    end
  end
end
