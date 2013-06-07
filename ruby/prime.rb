class PrimeCalculator
		def calculate(num)

				return [] if num == 1

				factor = (2..num).find { |x| num % x == 0}
				[factor] + calculate(num / factor)
		end

end
