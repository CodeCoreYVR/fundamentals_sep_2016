print 'What was your score: '

score = gets.to_i

if score > 100
	puts 'Impossible'
elsif score > 86
	puts 'A'
elsif score > 70
	puts 'B'
else
	puts 'F-'
end
