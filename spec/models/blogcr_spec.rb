require 'spec_helper'

describe Blogcr do
	before do
		@blogcr = Blogcr.new(title: "test",creater: "test", content: "test", link: "vietnamnet.vn")
	end
	subject{ @blogcr }
	it { should respond_to(:title)}
	it { should respond_to(:creater)}
	it { should respond_to(:content)}
	it { should be_valid }

	describe "When title is not present" do
		before { @blogcr.title = ""}
		it {should_not be_valid}
	end

	describe "When title is already taken " do
		before do
			title_with_blogcr = @blogcr.dup
			title_with_blogcr.title = @blogcr.title.upcase
			title_with_blogcr.save
		end
		it { should_not be_valid}
	end
	describe "When creater is not present" do
		before { @blogcr.creater = ""}
		it {should_not be_valid}
	end

	describe "When content is not present" do
		before { @blogcr.content = ""}
		it {should_not be_valid}
	end

	describe "When content is already taken " do
		before do
			content_with_blogcr = @blogcr.dup
			content_with_blogcr.title = @blogcr.content.upcase
			content_with_blogcr.save
		end
		it { should_not be_valid}
	end

	describe "When link format is invalid" do
		it "should be invalid" do
			links = %w[vietnamnet@vietnamnet.vn vietnam.v?n]
			links.each do | invalid_link |
				@blogcr.link = invalid_link
				expect(@blogcr).not_to be_valid
			end
		end
	end

	describe "When link format is valid" do
		it "should be vaild" do
			links = %w[vietnamnet.vn vietnamnet.vn/news news.vietnamnet.vn]
			links.each do | valid_link |
				@blogcr.link = valid_link
				expect(@blogcr).to be_valid
			end
		end
	end
end
