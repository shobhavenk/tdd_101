require 'spec_helper'

module Rectangle
	describe 'Square' do
		context "the area" do
			it "is 25 given side is 5" do
				Rectangle::Square.build_square(5).area.should eql(25)
			end

			it "is 30.25 given side is 5.5" do
				Rectangle::Square.build_square(5.5).area.should eql(30.25)
			end		
		end

		context "validations" do
			it "should fail for 0 side" do
				result = Rectangle::Square.build_square(0)
				result[:error].should == "invalid arguments"
			end

			it "should fail -ve side" do
				result = Rectangle::Square.build_square(-1)
				result[:error].should == "invalid arguments"
			end

			it "ishould fail for regular expression" do
				result = Rectangle::Square.build_square("5+1+2")
				result[:error].should == "characters are not allowed"
			end

			# it "should fail for imaginary value" do
			# 	result = Rectangle::Square.build_square(5i)
			# 	result[:error].should == "imaginary number are not allowed"
			# end

			it "should fail for character value" do
				result = Rectangle::Square.build_square('a')
				result[:error].should == "characters are not allowed"
			end	

			it "should fail for nil value" do
				result = Rectangle::Square.build_square("")
				result[:error].should == "cannot pass nil value"
			end						
		end
	end
end