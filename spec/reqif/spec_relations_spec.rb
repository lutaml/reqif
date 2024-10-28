RSpec.describe Reqif::SpecRelations do
  let(:spec_relations_xml) do
    <<~XML
      <SPEC-RELATIONS>
        <SPEC-RELATION IDENTIFIER="rel1" LAST-CHANGE="2023-10-26T12:00:00Z">
          <SOURCE-REF>so1</SOURCE-REF>
          <TARGET-REF>so2</TARGET-REF>
          <TYPE-REF>rt1</TYPE-REF>
        </SPEC-RELATION>
      </SPEC-RELATIONS>
    XML
  end

  let(:spec_relations) { described_class.from_xml(spec_relations_xml) }

  describe "spec relations" do
    it "parses relation attributes" do
      relation = spec_relations.spec_relation.first
      expect(relation.identifier).to eq("rel1")
      expect(relation.source_ref).to eq("so1")
      expect(relation.target_ref).to eq("so2")
      expect(relation.type_ref).to eq("rt1")
    end
  end
end
