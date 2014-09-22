class FizzBuzz
	def divisible_by_three(number)
		divisible_by(number,3)
	end

	def divisible_by_five(number)
		divisible_by(number,5)
	end

	def divisible_by_fifteen(number)
      	divisible_by(number,15)
	end

	def divisible_by(number,divisor)
		number % divisor == 0 ? true : number
	end

    def fizzbuzz(number)
    	return "FizzBuzz" if divisible_by(number,15) == true
    	return "Fizz"     if divisible_by(number,3 ) == true
    	return "Buzz"     if divisible_by(number,5 ) == true
    	number
    end

end

game = FizzBuzz.new

[*1..100].each {|n| `say #{game.fizzbuzz(n)}`}