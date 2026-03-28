# frozen_string_literal: true

RSpec.describe Reqif::SpecRelations do
  let(:spec_relations_xml) do
    <<~XML
      <SPEC-RELATIONS xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">
        <SPEC-RELATION IDENTIFIER="rel1" LAST-CHANGE="2023-10-26T12:00:00Z">
          <SOURCE>
            <SPEC-OBJECT-REF>so1</SPEC-OBJECT-REF>
          </SOURCE>
          <TARGET>
            <SPEC-OBJECT-REF>so2</SPEC-OBJECT-REF>
          </TARGET>
          <TYPE>
            <SPEC-RELATION-TYPE-REF>rt1</SPEC-RELATION-TYPE-REF>
          </TYPE>
        </SPEC-RELATION>
      </SPEC-RELATIONS>
    XML
  end

  let(:spec_relations) { described_class.from_xml(spec_relations_xml) }

  describe "spec relations" do
    it "parses relation attributes" do
      relation = spec_relations.spec_relation.first
      expect(relation.identifier).to eq("rel1")
      expect(relation.source.spec_object_ref).to eq("so1")
      expect(relation.target.spec_object_ref).to eq("so2")
      expect(relation.type.spec_relation_type_ref).to eq("rt1")
    end
  end
end
