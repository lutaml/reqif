module Reqif
  module Doors
    # String type that uses the ReqIF namespace, not Doors namespace.
    # This is because elements like ATTRIBUTE-DEFINITION-*-REF inside
    # Doors elements like READONLY-ATTRIBUTES still belong to the ReqIF namespace.
    class StringType < Lutaml::Model::Type::String
      xml do
        namespace ::Reqif::Namespace
      end
    end
  end
end