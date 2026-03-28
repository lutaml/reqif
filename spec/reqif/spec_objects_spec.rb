# frozen_string_literal: true

RSpec.describe Reqif::SpecObject do
  let(:spec_object_xml) do
    <<~XML
      <SPEC-OBJECT xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd" IDENTIFIER="so1" LAST-CHANGE="2023-10-26T12:00:00Z" LONG-NAME="Login Requirement">
        <TYPE>
          <SPEC-OBJECT-TYPE-REF>st1</SPEC-OBJECT-TYPE-REF>
        </TYPE>
        <VALUES>
          <ATTRIBUTE-VALUE-STRING THE-VALUE="System shall provide login functionality">
            <DEFINITION>
              <ATTRIBUTE-DEFINITION-STRING-REF>ad1</ATTRIBUTE-DEFINITION-STRING-REF>
            </DEFINITION>
          </ATTRIBUTE-VALUE-STRING>
        </VALUES>
      </SPEC-OBJECT>
    XML
  end

  let(:spec_object) { described_class.from_xml(spec_object_xml) }

  describe "spec object attributes" do
    it "parses basic attributes" do
      expect(spec_object.identifier).to eq("so1")
      expect(spec_object.long_name).to eq("Login Requirement")
      expect(spec_object.type.spec_object_type_ref).to eq("st1")
    end

    it "parses values" do
      value = spec_object.values.attribute_value_string.first
      expect(value.the_value).to eq("System shall provide login functionality")
    end
  end
end
