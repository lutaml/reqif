require "lutaml/model"

module Reqif
  class XhtmlContent < Lutaml::Model::Serializable
    xml do
      root "XHTML-CONTENT"
      namespace "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd", "REQIF"
    end
  end
end
