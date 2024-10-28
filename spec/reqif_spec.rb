# frozen_string_literal: true

require "spec_helper"
require "pathname"
# require_relative "../lib/Reqif/ReqIf"

RSpec.describe Reqif do
  fixtures_dir = Pathname.new(__dir__).join("fixtures")

  describe "XML round-trip conversion" do
    xml_files = Dir[fixtures_dir.join("**", "*.xml")]

    # def check_parsed_content(parsed, reparsed)
    #   %i[
    #     schema_name
    #     schema_version
    #     short_name
    #     namespace
    #     json_base_uri
    #   ].each do |element|
    #     expect(reparsed.send(element)).to eq(parsed.send(element))
    #   end
    # end

    xml_files.each do |file_path|
      context "with file #{Pathname.new(file_path).relative_path_from(fixtures_dir)}" do
        # context "with file #{file_path}" do
        let(:xml_string) { File.read(file_path) }

        # it 'provides identical attribute access' do
        #   parsed = Reqif::ReqIf.from_xml(xml_string)
        #   generated = parsed.to_xml(
        #     pretty: true,
        #     declaration: true,
        #     encoding: 'utf-8'
        #   )
        #   reparsed = Reqif::ReqIf.from_xml(generated)

        #   check_parsed_content(parsed, reparsed)
        # end

        it "performs lossless round-trip conversion" do
          parsed = Reqif::ReqIf.from_xml(xml_string)
          generated = parsed.to_xml(
            pretty: true,
            declaration: true,
            encoding: "utf-8",
          )

          cleaned_xml_string = xml_string
          # cleaned_xml_string = xml_string
          #   .gsub(/^<\?xml-model.*\n/, "")
          #   .gsub(/^<\?xml-stylesheet.*\n/, "")

          # puts "original---------"
          # puts cleaned_xml_string
          # puts "------"
          # puts generated

          expect(generated).to be_analogous_with(cleaned_xml_string)
        end
      end
    end
  end
end
