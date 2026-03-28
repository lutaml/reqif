# frozen_string_literal: true

require "lutaml/xml/namespace"

module Reqif
  # Namespace class for ReqIF XML elements.
  # Supports alias URIs for backwards compatibility with different ReqIF versions.
  # ReqIF 1.1 uses http://www.omg.org/spec/ReqIF/20110401/reqif.xsd
  # Some older tools (e.g., Eclipse RMF) used http://www.omg.org/spec/ReqIF/20101201
  class Namespace < Lutaml::Xml::Namespace
    uri "http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"
    uri_aliases "http://www.omg.org/spec/ReqIF/20101201"
    element_form_default :qualified
    attribute_form_default :qualified
  end
end
