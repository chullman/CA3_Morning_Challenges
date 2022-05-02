require_relative "../capital_check"

describe "it should" do
   it "check capital_index is defined" do
        expect(defined? capital_index).to eql("method")
   end
   it "check argument count" do
        expect { capital_index( "test" ) }.to_not raise_error
        expect { capital_index( "test", "1" ) }.to raise_error(ArgumentError)
    end    
   it "return every index of a string when it's all capitalised" do
        actual = capital_index("SINGLE")
        expect(actual).to eql([0, 1, 2, 3, 4, 5])
   end
    it "return an empty array when there are no uppercase letters" do
        actual = capital_index("lowercase")
        expect(actual).to eql([])
   end
    it "return an empty array when an empty string is received" do
        actual = capital_index("")
        expect(actual).to eql([])
   end
    it "return the index of a string where there are capital letters" do
        actual = capital_index("weIRd CAsinG")
        expect(actual).to eql([2, 3, 6, 7, 11])
   end
    it "handle special characters" do
        actual = capital_index("WOW! Super ENTHUSIASTIC!!")
        expect(actual).to eql([0, 1, 2, 5, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22])
   end
end