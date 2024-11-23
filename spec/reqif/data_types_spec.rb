RSpec.describe Reqif::Datatypes do
  let(:datatypes_xml) do
    <<~XML
      <DATATYPES xmlns="http://www.omg.org/spec/ReqIF/20110401/reqif.xsd">
        <DATATYPE-DEFINITION-STRING IDENTIFIER="dt1" LAST-CHANGE="2023-10-26T12:00:00Z" LONG-NAME="String Type">
          <MAX-LENGTH>255</MAX-LENGTH>
        </DATATYPE-DEFINITION-STRING>
        <DATATYPE-DEFINITION-INTEGER IDENTIFIER="dt2" LAST-CHANGE="2023-10-26T12:00:00Z" LONG-NAME="Integer Type">
          <MAX>100</MAX>
          <MIN>0</MIN>
        </DATATYPE-DEFINITION-INTEGER>
      </DATATYPES>
    XML
  end

  let(:datatypes) { described_class.from_xml(datatypes_xml) }

  describe "data type definitions" do
    it "parses string data type" do
      string_type = datatypes.datatype_definition_string.first
      expect(string_type.identifier).to eq("dt1")
      expect(string_type.long_name).to eq("String Type")
      expect(string_type.max_length).to eq(255)
    end

    it "parses integer data type" do
      integer_type = datatypes.datatype_definition_integer.first
      expect(integer_type.identifier).to eq("dt2")
      expect(integer_type.long_name).to eq("Integer Type")
      expect(integer_type.max).to eq(100)
      expect(integer_type.min).to eq(0)
    end
  end
end
