require 'spec_helper'

describe Catebg do
  
  before do
  	@catebg = Catebg.new(namecatebg: "test name cate")
  end

  subject{ @catebg }
  it { should respond_to(:namecatebg)}

  it { should be_valid }

  describe "when name's catebg is not present" do
  	before { @catebg.namecatebg = "" }
  	it { should_not be_valid}
  end

  describe "When name's catebg is already taken" do
  	before do
  		name_with_namecate = @catebg.dup
  		name_with_namecate.namecatebg = @catebg.namecatebg.upcase
  		name_with_namecate.save
  	end

  	it { should_not be_valid}
  end
end
