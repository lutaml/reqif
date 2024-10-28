# spec/reqif/doors_export_spec.rb
RSpec.describe "IBM DOORS Export" do
  let(:xml_file) { File.read("spec/fixtures/doors_export.xml") }
  let(:reqif) { Reqif::ReqIf.from_xml(xml_file) }

  it "parses DOORS export correctly" do
    expect(reqif.the_header.req_if_header.source_tool_id).to eq("IBM Rational DOORS Version 9.6.1")

    datatypes = reqif.core_content.req_if_content.datatypes
    expect(datatypes.datatype_definition_string).to be_present
    expect(datatypes.datatype_definition_integer).to be_present
    expect(datatypes.datatype_definition_real).to be_present
    expect(datatypes.datatype_definition_date).to be_present

    spec_object = reqif.core_content.req_if_content.spec_objects.spec_object.first
    value = spec_object.values.attribute_value_string.first
    expect(value.the_value).to eq("System Requirements")
  end
end
