RSpec.describe Reqif::Specifications do
  let(:specifications_xml) do
    <<~XML
      <SPECIFICATIONS>
        <SPECIFICATION IDENTIFIER="spec1" LAST-CHANGE="2023-10-26T12:00:00Z" LONG-NAME="System Requirements">
          <CHILDREN>
            <SPEC-HIERARCHY IDENTIFIER="sh1" LAST-CHANGE="2023-10-26T12:00:00Z">
              <OBJECT-REF>so1</OBJECT-REF>
            </SPEC-HIERARCHY>
          </CHILDREN>
        </SPECIFICATION>
      </SPECIFICATIONS>
    XML
  end

  let(:specifications) { described_class.from_xml(specifications_xml) }

  describe "specifications" do
    it "parses specification" do
      spec = specifications.specification.first
      expect(spec.identifier).to eq("spec1")
      expect(spec.long_name).to eq("System Requirements")
    end

    it "parses spec hierarchy" do
      hierarchy = specifications.specification.first.children.first
      expect(hierarchy.identifier).to eq("sh1")
      expect(hierarchy.object_ref).to eq("so1")
    end
  end
end
