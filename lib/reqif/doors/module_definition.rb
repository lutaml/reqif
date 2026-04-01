require "lutaml/model"

module Reqif
  module Doors
    class ModuleDefinition < Lutaml::Model::Serializable
      #   <MODULE-DEFINITION>
      #     <DDC-MODE>DDC_FULL_MODULE</DDC-MODE>
      #     <SPECIFICATION-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">_3166b6de-d4b9-4334-a13f-a55792546604</SPECIFICATION-REF>
      #   </MODULE-DEFINITION>

      attribute :ddc_mode, :string
      attribute :specification_ref, ::Reqif::Doors::StringType

      xml do
        element "MODULE-DEFINITION"
        namespace Namespace

        map_element "DDC-MODE", to: :ddc_mode
        map_element "SPECIFICATION-REF", to: :specification_ref
      end
    end
  end
end
