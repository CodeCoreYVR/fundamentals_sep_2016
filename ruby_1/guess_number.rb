lucky_number = rand(100)
guesses = 0
loop do
	puts "What is the lucky number?"
	guess = gets.to_i
	if guess == lucky_number
		puts "You got it!"
		puts "you guessed " + guesses.to_s + " times"
		break
	elsif guess < lucky_number
		puts "Guess higher."
	elsif guess > lucky_number
		puts "Guess lower."
	else
		puts "Not a valid guess."
	end
	guesses += 1
end
