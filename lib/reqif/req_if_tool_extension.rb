require "lutaml/model"

module Reqif
  class ReqIfToolExtension < Lutaml::Model::Serializable
    #     <DOORS-RIF-DEFINITION░xmlns="http://www.ibm.com/rdm/doors/REQIF/xmlns/1.0">
    #   <IDENTIFIER>_ae71eb64-2aa6-4780-9212-bda594614a7f</IDENTIFIER>
    #   <MODULE-DEFINITION>
    #     <DDC-MODE>DDC_FULL_MODULE</DDC-MODE>
    #     <SPECIFICATION-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">_3166b6de-d4b9-4334-a13f-a55792546604</SPECIFICATION-REF>
    #   </MODULE-DEFINITION>
    # </DOORS-RIF-DEFINITION>

    # <READONLY-ATTRIBUTES░xmlns="http://www.ibm.com/rdm/doors/REQIF/xmlns/1.0">
    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-0d13686b-83c4-487b-9bcc-2f11a673c97a</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-48ed4896-28e9-492a-a45a-ca3716a64632</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-DATE-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-b5ff951b-70fc-440f-b775-cda530e97083</ATTRIBUTE-DEFINITION-DATE-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-81da08a0-6257-488b-b373-04d59395c81a</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-XHTML-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-0c2fc6c9-50e9-43ae-970b-c04ab506d834</ATTRIBUTE-DEFINITION-XHTML-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-f0d39171-054d-43e9-aec3-810b47c32334</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-34c59c32-81d4-43ef-99be-a445358cd4bd</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-DATE-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-d683201b-4545-4afc-beee-401855fa2ded</ATTRIBUTE-DEFINITION-DATE-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-baad7651-7ec7-4694-8913-68daa9927781</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-XHTML-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-ee42329b-d592-44fb-91d2-469a9a9b9dce</ATTRIBUTE-DEFINITION-XHTML-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-47a379f0-441b-4df1-bbd8-a4281b890c26</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-5c6c023c-8ace-4f68-807b-80190ba90552</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-DATE-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-6b83e957-ff2c-4de6-8bf8-4d2549d0d7bc</ATTRIBUTE-DEFINITION-DATE-REF>

    #   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-a8329820-0ccd-4ebf-8701-a2fd599dc463</ATTRIBUTE-DEFINITION-STRING-REF>

    #   <ATTRIBUTE-DEFINITION-XHTML-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-012fb471-e36e-4785-91e6-fdb754ad3613</ATTRIBUTE-DEFINITION-XHTML-REF>
    # </READONLY-ATTRIBUTES>

    attribute :doors_rif_definition, ::Reqif::Doors::RifDefinition
    attribute :readonly_attributes, ::Reqif::Doors::ReadonlyAttributes

    xml do
      element "REQ-IF-TOOL-EXTENSION"
      namespace Namespace

      map_element "DOORS-RIF-DEFINITION", to: :doors_rif_definition
      map_element "READONLY-ATTRIBUTES", to: :readonly_attributes
    end
  end
end
