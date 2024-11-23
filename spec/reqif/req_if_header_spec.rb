RSpec.describe Reqif::ReqIfHeader do
  let(:header_xml) do
    <<~XML
      <REQ-IF-HEADER xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">
        <COMMENT>Example ReqIF file</COMMENT>
        <CREATION-TIME>2023-10-26T12:00:00Z</CREATION-TIME>
        <IDENTIFIER>_1234567890</IDENTIFIER>
        <REQ-IF-TOOL-ID>reqif-tool</REQ-IF-TOOL-ID>
        <REQ-IF-VERSION>1.0</REQ-IF-VERSION>
        <SOURCE-TOOL-ID>source-tool</SOURCE-TOOL-ID>
        <TITLE>Requirements Document</TITLE>
      </REQ-IF-HEADER>
    XML
  end

  let(:header) { described_class.from_xml(header_xml) }

  describe "attributes" do
    it "parses all header attributes" do
      expect(header.comment).to eq("Example ReqIF file")
      expect(header.creation_time).to be_a(DateTime)
      expect(header.creation_time.utc.iso8601).to eq("2023-10-26T12:00:00Z")
      expect(header.identifier).to eq("_1234567890")
      expect(header.req_if_tool_id).to eq("reqif-tool")
      expect(header.req_if_version).to eq("1.0")
      expect(header.source_tool_id).to eq("source-tool")
      expect(header.title).to eq("Requirements Document")
    end
  end
end
