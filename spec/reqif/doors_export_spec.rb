RSpec.describe "IBM DOORS Export" do
  let(:xml_file) { File.read("spec/fixtures/doors_export.xml") }
  let(:reqif) { Reqif::ReqIf.from_xml(xml_file) }

  it "parses DOORS export correctly" do
    expect(reqif.the_header.source_tool_id).to eq("IBM Rational DOORS Version 9.6.1")

    datatypes = reqif.core_content.datatypes.definition
    expect(datatypes.map(&:long_name)).to include("String", "Integer", "Real", "Date")

    spec_object = reqif.core_content.spec_objects.spec_object.first
    expect(spec_object.values.first.the_value).to eq("System Requirements")
  end
end
