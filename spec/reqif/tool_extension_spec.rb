# frozen_string_literal: true

RSpec.describe Reqif::ToolExtensions do
  let(:tool_extensions_xml) do
    <<~XML
      <TOOL-EXTENSIONS xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">
        <REQ-IF-TOOL-EXTENSION xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">
          <DOORS-RIF-DEFINITION xmlns="http://www.ibm.com/rdm/doors/REQIF/xmlns/1.0">
            <IDENTIFIER>_test-id</IDENTIFIER>
            <MODULE-DEFINITION>
              <DDC-MODE>DDC_FULL_MODULE</DDC-MODE>
            </MODULE-DEFINITION>
          </DOORS-RIF-DEFINITION>
        </REQ-IF-TOOL-EXTENSION>
      </TOOL-EXTENSIONS>
    XML
  end

  let(:tool_extensions) { described_class.from_xml(tool_extensions_xml) }

  describe "tool extensions" do
    it "parses tool extension data" do
      ext = tool_extensions.req_if_tool_extension.first
      expect(ext.doors_rif_definition.identifier.content).to eq("_test-id")
    end
  end
end
