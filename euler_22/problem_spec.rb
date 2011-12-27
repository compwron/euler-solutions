require 'problem'

describe "the parse function" do
  describe "provided a string with three comma separated elements" do
    let(:out) { parse "asdf,ghjk,jklol" }
    it "should return an array with three elements" do
       out.should have(3).elements
     end
    it "should contain the contents from the input" do
      out.should == ["asdf", "ghjk", "jklol"]
    end
  end
  
  describe "provided a string with elements surrounded by \"" do
    it "should remove the quotes" do
      out = parse '"asdf"'
      out.should == ["asdf"]
    end
  end
end

describe "the alphabetize function" do
  it "should alphabetize the input" do
    input = ["aaaa", "xxxxx", "eeee", "ttttt"]
    out = alphabetize input
    out.should == ["aaaa",  "eeee", "ttttt", "xxxxx"]
  end
end

describe "the value_of_name function" do
  it "returns 53 when given COLIN" do 
    value_of_name("COLIN").should == 53
  end
end

describe "the score_names function" do
  it 'returns 35*1 + 53*2 when given ["FOO", "COLIN"]' do
    score_names(["FOO", "COLIN"]).should == 36*1 + 53*2
  end
end