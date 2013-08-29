require 'spec_helper'

describe Sortbg do
  before { @sortbg = Sortbg.new(namesortbg: "hello")}

  subject { @sortbg }
  it { should respond_to(:namesortbg)}

  it { should be_valid }
  describe "When name's sortbg is not present" do
  	before { @sortbg.namesortbg = "" }
  	it { should_not be_valid}
  end

  describe "When name's sortbg is already taken" do
  	before do
  		name_with_same = @sortbg.dup
  		name_with_same.namesortbg = @sortbg.namesortbg.upcase
  		name_with_same.save
  	end
  	it {should_not be_valid}
  end
end
