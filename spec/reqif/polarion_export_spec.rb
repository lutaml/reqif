RSpec.describe "Polarion Export" do
  let(:xml_file) { File.read("spec/fixtures/polarion_export.xml") }
  let(:reqif) { Reqif::ReqIf.from_xml(xml_file) }

  it "parses Polarion export correctly" do
    expect(reqif.the_header.req_if_tool_id).to eq("Polarion")

    enum_type = reqif.core_content.datatypes.definition.find { |d| d.long_name == "Status" }
    expect(enum_type).to be_present
    expect(enum_type.specified_values.map(&:long_name)).to contain_exactly("Draft", "Approved")

    spec_object = reqif.core_content.spec_objects.spec_object.first
    expect(spec_object.values.first.the_value).to include("The system shall be able to handle concurrent users.")
  end
end
