# frozen_string_literal: true

require "lutaml/xml/namespace"

module Reqif
  class Namespace < Lutaml::Xml::Namespace
    uri "http://www.omg.org/spec/ReqIF/20101201"
    element_form_default :qualified
    attribute_form_default :qualified
  end
end
