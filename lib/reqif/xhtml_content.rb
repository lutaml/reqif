# frozen_string_literal: true

require "lutaml/model"

module Reqif
  class XhtmlContent < Lutaml::Model::Serializable
    # All XHTML block and inline elements that can appear in XHTML-CONTENT
    attribute :div, Hyperlang::Xhtml::Div, collection: true
    attribute :p, Hyperlang::Xhtml::P, collection: true
    attribute :span, Hyperlang::Xhtml::Span, collection: true
    attribute :br, Hyperlang::Xhtml::Br, collection: true
    attribute :strong, Hyperlang::Xhtml::Strong, collection: true
    attribute :em, Hyperlang::Xhtml::Em, collection: true
    attribute :ul, Hyperlang::Xhtml::Ul, collection: true
    attribute :ol, Hyperlang::Xhtml::Ol, collection: true
    attribute :li, Hyperlang::Xhtml::Li, collection: true
    attribute :a, Hyperlang::Xhtml::A, collection: true
    attribute :h1, Hyperlang::Xhtml::H1, collection: true
    attribute :h2, Hyperlang::Xhtml::H2, collection: true
    attribute :h3, Hyperlang::Xhtml::H3, collection: true
    attribute :h4, Hyperlang::Xhtml::H4, collection: true
    attribute :h5, Hyperlang::Xhtml::H5, collection: true
    attribute :h6, Hyperlang::Xhtml::H6, collection: true
    attribute :img, Hyperlang::Xhtml::Img, collection: true
    attribute :blockquote, Hyperlang::Xhtml::Blockquote, collection: true
    attribute :pre, Hyperlang::Xhtml::Pre, collection: true
    attribute :code, Hyperlang::Xhtml::Code, collection: true
    attribute :dl, Hyperlang::Xhtml::Dl, collection: true
    attribute :dt, Hyperlang::Xhtml::Dt, collection: true
    attribute :dd, Hyperlang::Xhtml::Dd, collection: true
    attribute :table, Hyperlang::Xhtml::Table, collection: true
    attribute :tr, Hyperlang::Xhtml::Tr, collection: true
    attribute :th, Hyperlang::Xhtml::Th, collection: true
    attribute :td, Hyperlang::Xhtml::Td, collection: true
    attribute :thead, Hyperlang::Xhtml::Thead, collection: true
    attribute :tbody, Hyperlang::Xhtml::Tbody, collection: true
    attribute :tfoot, Hyperlang::Xhtml::Tfoot, collection: true
    attribute :caption, Hyperlang::Xhtml::Caption, collection: true
    attribute :form, Hyperlang::Xhtml::Form, collection: true
    attribute :input, Hyperlang::Xhtml::Input, collection: true
    attribute :select, Hyperlang::Xhtml::Select, collection: true
    attribute :option, Hyperlang::Xhtml::Option, collection: true
    attribute :textarea, Hyperlang::Xhtml::Textarea, collection: true
    attribute :button, Hyperlang::Xhtml::Button, collection: true
    attribute :label, Hyperlang::Xhtml::Label, collection: true
    attribute :fieldset, Hyperlang::Xhtml::Fieldset, collection: true
    attribute :legend, Hyperlang::Xhtml::Legend, collection: true
    attribute :hr, Hyperlang::Xhtml::Hr, collection: true
    attribute :address, Hyperlang::Xhtml::Address, collection: true
    attribute :b, Hyperlang::Xhtml::B, collection: true
    attribute :i, Hyperlang::Xhtml::I, collection: true
    attribute :u, Hyperlang::Xhtml::U, collection: true
    attribute :s, Hyperlang::Xhtml::S, collection: true
    attribute :strike, Hyperlang::Xhtml::Strike, collection: true
    attribute :big, Hyperlang::Xhtml::Big, collection: true
    attribute :small, Hyperlang::Xhtml::Small, collection: true
    attribute :sub, Hyperlang::Xhtml::Sub, collection: true
    attribute :sup, Hyperlang::Xhtml::Sup, collection: true
    attribute :tt, Hyperlang::Xhtml::Tt, collection: true
    attribute :abbr, Hyperlang::Xhtml::Abbr, collection: true
    attribute :acronym, Hyperlang::Xhtml::Acronym, collection: true
    attribute :cite, Hyperlang::Xhtml::Cite, collection: true
    attribute :code, Hyperlang::Xhtml::Code, collection: true
    attribute :dfn, Hyperlang::Xhtml::Dfn, collection: true
    attribute :kbd, Hyperlang::Xhtml::Kbd, collection: true
    attribute :samp, Hyperlang::Xhtml::Samp, collection: true
    attribute :var, Hyperlang::Xhtml::Var, collection: true
    attribute :q, Hyperlang::Xhtml::Q, collection: true
    attribute :del, Hyperlang::Xhtml::Del, collection: true
    attribute :ins, Hyperlang::Xhtml::Ins, collection: true
    attribute :noscript, Hyperlang::Xhtml::Noscript, collection: true
    attribute :script, Hyperlang::Xhtml::Script, collection: true
    attribute :map, Hyperlang::Xhtml::Map, collection: true
    attribute :area, Hyperlang::Xhtml::Area, collection: true
    attribute :object, Hyperlang::Xhtml::Object, collection: true
    attribute :param, Hyperlang::Xhtml::Param, collection: true
    attribute :col, Hyperlang::Xhtml::Col, collection: true
    attribute :colgroup, Hyperlang::Xhtml::Colgroup, collection: true
    attribute :ruby, Hyperlang::Xhtml::Ruby, collection: true
    attribute :rb, Hyperlang::Xhtml::Rb, collection: true
    attribute :rt, Hyperlang::Xhtml::Rt, collection: true
    attribute :rp, Hyperlang::Xhtml::Rp, collection: true
    attribute :rbc, Hyperlang::Xhtml::Rbc, collection: true
    attribute :rtc, Hyperlang::Xhtml::Rtc, collection: true
    attribute :content, :string

    xml do
      element "XHTML-CONTENT"
      namespace Namespace
      mixed_content
      map_content to: :content

      # Block and structural elements
      map_element "div", to: :div
      map_element "p", to: :p
      map_element "h1", to: :h1
      map_element "h2", to: :h2
      map_element "h3", to: :h3
      map_element "h4", to: :h4
      map_element "h5", to: :h5
      map_element "h6", to: :h6
      map_element "blockquote", to: :blockquote
      map_element "pre", to: :pre
      map_element "hr", to: :hr
      map_element "address", to: :address

      # Lists
      map_element "ul", to: :ul
      map_element "ol", to: :ol
      map_element "li", to: :li
      map_element "dl", to: :dl
      map_element "dt", to: :dt
      map_element "dd", to: :dd

      # Tables
      map_element "table", to: :table
      map_element "caption", to: :caption
      map_element "thead", to: :thead
      map_element "tbody", to: :tbody
      map_element "tfoot", to: :tfoot
      map_element "tr", to: :tr
      map_element "th", to: :th
      map_element "td", to: :td
      map_element "col", to: :col
      map_element "colgroup", to: :colgroup

      # Inline text elements
      map_element "span", to: :span
      map_element "br", to: :br
      map_element "strong", to: :strong
      map_element "em", to: :em
      map_element "a", to: :a
      map_element "img", to: :img
      map_element "code", to: :code
      map_element "q", to: :q
      map_element "b", to: :b
      map_element "i", to: :i
      map_element "u", to: :u
      map_element "s", to: :s
      map_element "strike", to: :strike
      map_element "big", to: :big
      map_element "small", to: :small
      map_element "sub", to: :sub
      map_element "sup", to: :sup
      map_element "tt", to: :tt
      map_element "abbr", to: :abbr
      map_element "acronym", to: :acronym
      map_element "cite", to: :cite
      map_element "dfn", to: :dfn
      map_element "kbd", to: :kbd
      map_element "samp", to: :samp
      map_element "var", to: :var

      # Forms
      map_element "form", to: :form
      map_element "input", to: :input
      map_element "select", to: :select
      map_element "option", to: :option
      map_element "textarea", to: :textarea
      map_element "button", to: :button
      map_element "label", to: :label
      map_element "fieldset", to: :fieldset
      map_element "legend", to: :legend

      # Edit elements
      map_element "del", to: :del
      map_element "ins", to: :ins

      # Scripting
      map_element "noscript", to: :noscript
      map_element "script", to: :script

      # Image map
      map_element "map", to: :map
      map_element "area", to: :area

      # Object
      map_element "object", to: :object
      map_element "param", to: :param

      # Ruby
      map_element "ruby", to: :ruby
      map_element "rb", to: :rb
      map_element "rt", to: :rt
      map_element "rp", to: :rp
      map_element "rbc", to: :rbc
      map_element "rtc", to: :rtc
    end
  end
end
