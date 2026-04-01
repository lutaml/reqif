# frozen_string_literal: true

RSpec.describe "Polarion Export" do
  let(:xml_file) { File.read("spec/fixtures/polarion_export.xml") }
  let(:reqif) { Reqif::ReqIf.from_xml(xml_file) }

  it "parses Polarion export correctly" do
    expect(reqif.the_header.req_if_header.req_if_tool_id).to eq("Polarion")

    enum_type = reqif.core_content.req_if_content.datatypes.datatype_definition_enumeration.find do |d|
      d.long_name == "Status"
    end
    expect(enum_type).not_to be_nil
    expect(enum_type.specified_values.enum_value.map(&:long_name)).to contain_exactly(
      "Draft", "Approved"
    )

    spec_object = reqif.core_content.req_if_content.spec_objects.spec_object.first
    xhtml_val = spec_object.values.attribute_value_xhtml.first
    expect(xhtml_val.the_value).to be_a(Reqif::XhtmlContent)
  end
end
