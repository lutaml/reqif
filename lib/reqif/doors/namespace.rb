require "lutaml/model"

module Reqif
  module Doors
    class Namespace < Lutaml::Xml::Namespace
      uri "http://www.ibm.com/rdm/doors/REQIF/xmlns/1.0"
      prefix_default "doors"
    end
  end
end

