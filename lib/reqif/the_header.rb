require "lutaml/model"

module Reqif
  class TheHeader < Lutaml::Model::Serializable
    attribute :req_if_header, ReqIfHeader

    xml do
      root "THE-HEADER"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"

      map_element "REQ-IF-HEADER", to: :req_if_header
    end
  end
end
