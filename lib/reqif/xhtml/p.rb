# frozen_string_literal: true

require "lutaml/model"

module Reqif
  module Xhtml
    class P < Lutaml::Model::Serializable
      attribute :content, :string

      xml do
        element "p"
        namespace Namespace

        map_content to: :content
      end
    end
  end
end
