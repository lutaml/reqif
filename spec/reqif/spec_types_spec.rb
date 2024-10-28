RSpec.describe Reqif::SpecTypes do
  let(:spec_types_xml) do
    <<~XML
      <SPEC-TYPES>
        <SPEC-OBJECT-TYPE IDENTIFIER="st1" LAST-CHANGE="2023-10-26T12:00:00Z" LONG-NAME="Requirement Type">
          <ATTRIBUTE-DEFINITIONS>
            <ATTRIBUTE-DEFINITION-STRING IDENTIFIER="ad1" LAST-CHANGE="2023-10-26T12:00:00Z" LONG-NAME="Description">
              <TYPE-REF>dt1</TYPE-REF>
              <DEFAULT-VALUE>No description provided</DEFAULT-VALUE>
              <MULTI-VALUED>false</MULTI-VALUED>
            </ATTRIBUTE-DEFINITION-STRING>
          </ATTRIBUTE-DEFINITIONS>
        </SPEC-OBJECT-TYPE>
      </SPEC-TYPES>
    XML
  end

  let(:spec_types) { described_class.from_xml(spec_types_xml) }

  describe "specification types" do
    it "parses spec object type" do
      spec_object_type = spec_types.spec_object_type.first
      expect(spec_object_type.identifier).to eq("st1")
      expect(spec_object_type.long_name).to eq("Requirement Type")
    end

    it "parses attribute definitions" do
      attr_def = spec_types.spec_object_type.first.attribute_definitions.first
      expect(attr_def.identifier).to eq("ad1")
      expect(attr_def.long_name).to eq("Description")
      expect(attr_def.type_ref).to eq("dt1")
      expect(attr_def.default_value).to eq("No description provided")
      expect(attr_def.multi_valued).to be false
    end
  end
end
