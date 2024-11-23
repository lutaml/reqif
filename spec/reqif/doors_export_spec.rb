RSpec.describe "IBM DOORS Export" do
  let(:xml_file) { File.read("spec/fixtures/doors_export.xml") }
  let(:reqif) { Reqif::ReqIf.from_xml(xml_file) }

  it "parses DOORS export correctly" do
    expect(reqif.the_header.req_if_header.source_tool_id).to eq("IBM Rational DOORS Version 9.6.1")

    datatypes = reqif.core_content.req_if_content.datatypes
    expect(datatypes.datatype_definition_string.size).to be > 0
    expect(datatypes.datatype_definition_integer.size).to be > 0
    expect(datatypes.datatype_definition_real.size).to be > 0
    expect(datatypes.datatype_definition_date.size).to be > 0

    spec_object = reqif.core_content.req_if_content.spec_objects.spec_object.first
    value = spec_object.values.attribute_value_string.first
    expect(value.the_value).to eq("System Requirements")
  end
end
