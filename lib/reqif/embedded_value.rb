require "lutaml/model"

module Reqif
  class EmbeddedValue < Lutaml::Model::Serializable
    attribute :key, :integer
    attribute :other_content, :string

    xml do
      root "EMBEDDED-VALUE"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"

      map_attribute "KEY", to: :key
      map_attribute "OTHER-CONTENT", to: :other_content
    end
  end
end
