require "lutaml/model"

module Reqif
  module Doors
    class ReadonlyAttributes < Lutaml::Model::Serializable
# <READONLY-ATTRIBUTES░xmlns="http://www.ibm.com/rdm/doors/REQIF/xmlns/1.0">
#   <ATTRIBUTE-DEFINITION-STRING-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-0d13686b-83c4-487b-9bcc-2f11a673c97a</ATTRIBUTE-DEFINITION-STRING-REF>
#   <ATTRIBUTE-DEFINITION-DATE-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-b5ff951b-70fc-440f-b775-cda530e97083</ATTRIBUTE-DEFINITION-DATE-REF>
#   <ATTRIBUTE-DEFINITION-XHTML-REF░xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">rmf-0c2fc6c9-50e9-43ae-970b-c04ab506d834</ATTRIBUTE-DEFINITION-XHTML-REF>

      attribute :attribute_definition_string_refs, :string, collection: true
      attribute :attribute_definition_date_refs, :string, collection: true
      attribute :attribute_definition_xhtml_refs, :string, collection: true

      xml do
        element "READONLY-ATTRIBUTES"
        namespace Namespace
        ordered

        map_element "ATTRIBUTE-DEFINITION-STRING-REF", to: :attribute_definition_string_refs
        map_element "ATTRIBUTE-DEFINITION-DATE-REF", to: :attribute_definition_date_refs
        map_element "ATTRIBUTE-DEFINITION-XHTML-REF", to: :attribute_definition_xhtml_refs
      end
    end
  end
end

