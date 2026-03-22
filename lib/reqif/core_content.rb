require "lutaml/model"

module Reqif
  class CoreContent < Lutaml::Model::Serializable
    attribute :req_if_content, ReqIfContent

    xml do
      element "CORE-CONTENT"
      namespace Namespace
      ordered

      map_element "REQ-IF-CONTENT", to: :req_if_content
    end
  end
end
