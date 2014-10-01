require 'game'

describe FizzBuzz do

	let(:fizzbuzz) {FizzBuzz.new}


		it "divisible_by_three should take a number to test" do
	      expect(fizzbuzz.divisible_by_three(1)).to eq(1)  
	    end

		it "should know what is divisible by 3" do
			expect(fizzbuzz.divisible_by_three(3)).to be true
		end

		it "should know what is divisible by 5" do
			expect(fizzbuzz.divisible_by_five(5)).to be true
		end

		it "should return the number if it is not divisible by five" do
			expect(fizzbuzz.divisible_by_five(99)).to eq(99)
		end

		it "should know what is divisible by 3 and five" do
			expect(fizzbuzz.divisible_by_fifteen(15)).to be true
		end

		it "should return the number if it is not divisible by 3 or 5" do
			expect(fizzbuzz.divisible_by_fifteen(9)).to eq(9)
		end

	context "Interface tests" do
		it "should say 'Fizz' if it is divisible by 3" do
			expect(fizzbuzz.fizzbuzz(3)).to eq("Fizz")
		end
		it "should say 'Buzz' if it is divisible by 5" do
			expect(fizzbuzz.fizzbuzz(5)).to eq("Buzz")
		end	
		it "should say 'FizzBuzz' if it is divisible by 3 and 5" do
			expect(fizzbuzz.fizzbuzz(15)).to eq("FizzBuzz")
		end
		it "should return the number if not 'fizz' or 'buzz' or both" do
			expect(fizzbuzz.fizzbuzz(23)).to eq(23)
		end
	end
end