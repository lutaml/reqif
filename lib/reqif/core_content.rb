require "lutaml/model"

module Reqif
  class CoreContent < Lutaml::Model::Serializable
    attribute :req_if_content, ReqIfContent

    xml do
      root "CORE-CONTENT"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "REQ-IF-CONTENT", to: :req_if_content
    end
  end
end
