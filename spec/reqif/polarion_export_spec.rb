RSpec.describe "Polarion Export" do
  let(:xml_file) { File.read("spec/fixtures/polarion_export.xml") }
  let(:reqif) { Reqif::ReqIf.from_xml(xml_file) }

  it "parses Polarion export correctly" do
    expect(reqif.the_header.req_if_header.req_if_tool_id).to eq("Polarion")

    enum_type = reqif.core_content.req_if_content.datatypes.datatype_definition_enumeration.find { |d| d.long_name == "Status" }
    expect(enum_type).to_not be_nil
    expect(enum_type.specified_values.map(&:long_name)).to contain_exactly("Draft", "Approved")

    spec_object = reqif.req_if_content.spec_objects.spec_object.first
    expect(spec_object.values.first.the_value).to include("The system shall be able to handle concurrent users.")
  end
end
