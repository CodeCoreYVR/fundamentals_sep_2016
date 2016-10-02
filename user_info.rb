information = {}
puts "What is your first name?"
information[:first_name] = gets.chomp
puts "What is your last name?"
information[:last_name] = gets.chomp
puts "What is your age?"
information[:age] = gets.to_i
information[:cities] = []
loop do
	puts "What cities have you visited?"
	visited_cities = gets.chomp
	if visited_cities == "done"
		break
	else
		information[:cities] << visited_cities
	end
end

# information.each do |key, value|
#
# end

puts "My name is #{information[:first_name]} #{information[:last_name]} I'm #{information[:age]} years old, and I've been to #{information[:cities].join(", ")}. "
