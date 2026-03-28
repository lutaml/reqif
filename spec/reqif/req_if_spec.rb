# frozen_string_literal: true

require "spec_helper"

RSpec.describe Reqif::ReqIf do
  let(:xml_string) { File.read("spec/fixtures/eclipse_rmf_sample.reqif") }
  let(:parsed) { described_class.from_xml(xml_string) }

  describe ".from_xml" do
    it "parses ReqIF XML correctly" do
      expect(parsed).to be_a(described_class)
      expect(parsed.the_header.req_if_header).to be_a(Reqif::ReqIfHeader)
      expect(parsed.core_content.req_if_content).to be_a(Reqif::ReqIfContent)
    end

    it "maintains XML namespaces" do
      generated = parsed.to_xml
      # Eclipse RMF fixtures use 20101201 namespace which should be preserved
      expect(generated).to include('xmlns="http://www.omg.org/spec/ReqIF/20101201"')
    end
  end

  describe "#to_xml" do
    it "generates valid ReqIF XML" do
      generated = parsed.to_xml(
        pretty: true,
        declaration: true,
        encoding: "utf-8"
      )

      # cleaned_xml_string = xml_string
      #                      .gsub(/^<\?xml-model.*\n/, '')
      #                      .gsub(/^<\?xml-stylesheet.*\n/, '')

      # puts "original---------"
      # puts cleaned_xml_string
      # puts "------"
      # puts generated

      expect(generated).to be_xml_equivalent_to(xml_string)
    end
  end
end
