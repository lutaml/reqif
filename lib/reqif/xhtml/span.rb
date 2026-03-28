# frozen_string_literal: true

require "lutaml/model"

module Reqif
  module Xhtml
    class Span < Lutaml::Model::Serializable
      attribute :content, :string

      xml do
        element "span"
        namespace Namespace

        map_content to: :content
      end
    end
  end
end
