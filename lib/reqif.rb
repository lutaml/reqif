# frozen_string_literal: true

require "lutaml/model"

Lutaml::Model::Config.configure do |config|
  require "lutaml/model/xml_adapter/nokogiri_adapter"
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
end

module Reqif
  class Error < StandardError; end

  # Your code goes here...
end

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.push_dir(__dir__) #, namespace: Reqif)
loader.ignore("#{__dir__}/reqif.rb")
loader.setup
loader.eager_load
