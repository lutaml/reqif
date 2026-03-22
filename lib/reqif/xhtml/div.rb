require "lutaml/model"

module Reqif
  module Xhtml
    class Div < Lutaml::Model::Serializable
      attribute :content, :string

      xml do
        element "div"
        namespace Namespace
        map_content to: :content
      end
    end
  end
end

