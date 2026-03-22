require "lutaml/model"

module Reqif
  class TheHeader < Lutaml::Model::Serializable
    attribute :req_if_header, ReqIfHeader

    xml do
      element "THE-HEADER"
      namespace Namespace

      map_element "REQ-IF-HEADER", to: :req_if_header
    end
  end
end
