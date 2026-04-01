require "lutaml/model"

module Reqif
  module Xhtml
    class Namespace < Lutaml::Xml::Namespace
      uri "http://www.w3.org/1999/xhtml"
      prefix_default "xhtml"
    end
  end
end
