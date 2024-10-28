require "lutaml/model"

module Reqif
  class ReqIfToolExtension < Lutaml::Model::Serializable
    xml do
      root "REQ-IF-TOOL-EXTENSION"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"
    end
  end
end
