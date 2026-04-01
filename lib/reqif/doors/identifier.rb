require "lutaml/model"

module Reqif
  module Doors
    class Identifier < Lutaml::Model::Serializable
      attribute :content, :string

      xml do
        element "IDENTIFIER"
        namespace Namespace
        map_content to: :content
      end
    end
  end
end
