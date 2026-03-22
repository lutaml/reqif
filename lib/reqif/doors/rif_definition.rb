require "lutaml/model"

module Reqif
  module Doors
    class RifDefinition < Lutaml::Model::Serializable
      #     <DOORS-RIF-DEFINITION░xmlns="http://www.ibm.com/rdm/doors/REQIF/xmlns/1.0">
#   <IDENTIFIER>_ae71eb64-2aa6-4780-9212-bda594614a7f</IDENTIFIER>
#   <MODULE-DEFINITION>
#     <DDC-MODE>DDC_FULL_MODULE</DDC-MODE>
#     <SPECIFICATION-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">_3166b6de-d4b9-4334-a13f-a55792546604</SPECIFICATION-REF>
#   </MODULE-DEFINITION>
# </DOORS-RIF-DEFINITION>

      attribute :identifier, ::Reqif::Doors::Identifier
      attribute :module_definition, ::Reqif::Doors::ModuleDefinition

      xml do
        element "DOORS-RIF-DEFINITION"
        namespace ::Reqif::Doors::Namespace

        map_element "IDENTIFIER", to: :identifier
        map_element "MODULE-DEFINITION", to: :module_definition
      end
    end
  end
end

