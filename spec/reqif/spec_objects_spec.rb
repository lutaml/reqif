RSpec.describe Reqif::SpecObject do
  let(:spec_object_xml) do
    <<~XML
      <SPEC-OBJECT IDENTIFIER="so1" LAST-CHANGE="2023-10-26T12:00:00Z" LONG-NAME="Login Requirement">
        <TYPE-REF>st1</TYPE-REF>
        <VALUES>
          <ATTRIBUTE-VALUE>
            <DEFINITION-REF>ad1</DEFINITION-REF>
            <THE-VALUE>System shall provide login functionality</THE-VALUE>
          </ATTRIBUTE-VALUE>
        </VALUES>
      </SPEC-OBJECT>
    XML
  end

  let(:spec_object) { described_class.from_xml(spec_object_xml) }

  describe "spec object attributes" do
    it "parses basic attributes" do
      expect(spec_object.identifier).to eq("so1")
      expect(spec_object.long_name).to eq("Login Requirement")
      expect(spec_object.type_ref).to eq("st1")
    end

    it "parses values" do
      value = spec_object.values.first
      expect(value.definition_ref).to eq("ad1")
      expect(value.the_value).to eq("System shall provide login functionality")
    end
  end
end
