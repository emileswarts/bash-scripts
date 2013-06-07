class Mastermind

		attr_accessor :secret_code, :result_array, :finished

		def initialize
				@result_array = [false, false, false, false]  
				@result_array = false
				@guess_array = ["a", "a", "a", "a"]  
				@previous_guesses = []
		end

		def format_guess(guess_array)
				guess_array.join
		end

		def interogate(secret_code)
				puts "is the answer #{format_guess(@guess_array)} ?"
				@answer = gets.strip
		end

		def guess
				@guess = calculate
				puts "Is the answer #{@guess}?"
		end

		def calculate()

		end

		def save_code(secret_code)
				@secret_code = secret_code.split(//)
		end

end

class Game

		def initialize(brain)
				@brain = brain
				if game_started?
				else
						puts "welcome, please enter your secret code"
						@secret_code = gets.strip
						start_game
				end
		end

		def start_game
				until @anwer == "y" do
						@answer = gets.strip
						@brain.interogate(@secret_code)
				end
		end


		private
		def game_started?
				@started
		end
end

@master_mind = Mastermind.new
@game = Game.new(@master_mind)
