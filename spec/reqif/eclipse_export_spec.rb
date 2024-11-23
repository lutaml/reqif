RSpec.describe "Eclipse RMF Export" do
  let(:xml_file) { File.read("spec/fixtures/eclipse_sample.xml") }
  let(:reqif) { Reqif::ReqIf.from_xml(xml_file) }

  it "parses Eclipse RMF export correctly" do
    expect(reqif.the_header.req_if_header.req_if_tool_id).to eq("ProR (http://pror.org)")
    expect(reqif.the_header.req_if_header.title).to eq("Requirements Document")

    datatypes = reqif.core_content.req_if_content.datatypes
    string_type = datatypes.datatype_definition_string.first
    expect(string_type.long_name).to eq("T_String32k")
    expect(string_type.max_length).to eq(32000)

    spec_type = reqif.core_content.req_if_content.spec_types.spec_object_type.first
    expect(spec_type.long_name).to eq("Requirement Type")
  end
end
