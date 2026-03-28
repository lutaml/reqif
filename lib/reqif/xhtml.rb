# frozen_string_literal: true

require "lutaml/model"

module Reqif
  module Xhtml
    autoload :Namespace, "#{__dir__}/xhtml/namespace.rb"
    autoload :Div, "#{__dir__}/xhtml/div.rb"
    autoload :Span, "#{__dir__}/xhtml/span.rb"
    autoload :P, "#{__dir__}/xhtml/p.rb"
  end
end
