require 'rspec'
require 'mastermind.rb'

describe Mastermind do
		before do
				@mastermind = Mastermind.new
				@secret_code = "adfe"
		end

		it 'sets a default first guess of aaaa' do

		end

		it 'saves a secret code' do
				@mastermind.save_code(@secret_code)
				@mastermind.secret_code.should == ["a", "d", "f", "e"]
		end

		it 'sets a start result array' do
				@secret_code = "adfe"
				@mastermind.save_code(@secret_code)
				@mastermind.result_array.should == [false, false, false, false]
		end

		it 'formats a guess' do
				@guess_array = ["a", "a", "a", "a"]
				@mastermind.format_guess(@guess_array).should == "aaaa"
		end

		it 'Guesses a next code' do

		end
		it 'Guesses a right code'
		it 'Guesses a wrong code'
		it 'Generates a random 4 letter code as a guess'
		it 'Accepts feedback on a guess'
		it 'Remembers guesses'
		it 'Consults previous guesses to get an answer'
		it 'Sets the game alphabet'
		it 'Remembers its guess count'
end
