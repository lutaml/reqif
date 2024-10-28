RSpec.describe Reqif::ReqIfToolExtension do
  let(:tool_extension_xml) do
    <<~XML
      <TOOL-EXTENSIONS>
        <REQ-IF-TOOL-EXTENSION>
          <TOOL-ID>custom-tool</TOOL-ID>
          <TOOL-DATA>Custom data</TOOL-DATA>
        </REQ-IF-TOOL-EXTENSION>
      </TOOL-EXTENSIONS>
    XML
  end

  let(:tool_extension) { described_class.from_xml(tool_extension_xml) }

  describe "tool extensions" do
    it "parses tool extension data" do
      expect(tool_extension.extensions).to be_a(Array)
      expect(tool_extension.extensions.first).to include("TOOL-ID" => "custom-tool")
    end
  end
end
