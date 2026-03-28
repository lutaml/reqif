require "lutaml/model"

module Reqif
  module Doors
    autoload :Namespace, "#{__dir__}/doors/namespace.rb"
    autoload :Identifier, "#{__dir__}/doors/identifier.rb"
    autoload :ModuleDefinition, "#{__dir__}/doors/module_definition.rb"
    autoload :RifDefinition, "#{__dir__}/doors/rif_definition.rb"
    autoload :ReadonlyAttributes, "#{__dir__}/doors/readonly_attributes.rb"
    autoload :StringType, "#{__dir__}/doors/string_type.rb"
  end
end
