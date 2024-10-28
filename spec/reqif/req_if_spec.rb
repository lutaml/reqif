require "spec_helper"

RSpec.describe Reqif::ReqIf do
  let(:xml_file) { File.read("spec/fixtures/sample_reqif.xml") }
  let(:reqif) { described_class.from_xml(xml_file) }

  describe ".from_xml" do
    it "parses ReqIF XML correctly" do
      expect(reqif).to be_a(described_class)
      expect(reqif.the_header).to be_a(Reqif::ReqIfHeader)
      expect(reqif.core_content).to be_a(Reqif::ReqIfContent)
    end

    it "maintains XML namespaces" do
      xml_output = reqif.to_xml
      expect(xml_output).to include('xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"')
    end
  end

  describe "#to_xml" do
    it "generates valid ReqIF XML" do
      xml_output = reqif.to_xml
      regenerated_reqif = described_class.from_xml(xml_output)
      expect(regenerated_reqif.the_header.title).to eq(reqif.the_header.title)
    end
  end
end
