require "spec_helper"

RSpec.describe Reqif::ReqIf do
  let(:xml_string) { File.read("spec/fixtures/strictdoc_01_minimal_reqif_sample.reqif") }
  let(:parsed) { described_class.from_xml(xml_string) }

  describe ".from_xml" do
    it "parses ReqIF XML correctly" do
      expect(parsed).to be_a(described_class)
      expect(parsed.the_header).to be_a(Reqif::ReqIfHeader)
      expect(parsed.req_if_content).to be_a(Reqif::ReqIfContent)
    end

    it "maintains XML namespaces" do
      generated = parsed.to_xml
      expect(generated).to include('xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd"')
    end
  end

  describe "#to_xml" do
    it "generates valid ReqIF XML" do
      generated = parsed.to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8",
      )

      # cleaned_xml_string = xml_string
      #                      .gsub(/^<\?xml-model.*\n/, '')
      #                      .gsub(/^<\?xml-stylesheet.*\n/, '')

      # puts "original---------"
      # puts cleaned_xml_string
      # puts "------"
      # puts generated

      expect(generated).to be_analogous_with(xml_string)
    end
  end
end
