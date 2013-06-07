class RomanCalculator

		def calculate(num)
				if num <= 3
						return "I" * num
				elsif num == 4
						"IV"
				elsif num < 9
						"V" + "I" * (num - 5)
				elsif num == 9
						"IX"
				elsif num == 10
						"X"
				elsif num == 50
						"L"
				elsif num == 500
						"D"
				elsif num == 1000
						"M"
				end
		end


end
