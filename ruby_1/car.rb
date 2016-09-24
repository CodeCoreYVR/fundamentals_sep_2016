print "What year is your car? "
year = gets.to_i

if year >= 2016
  puts 'Future'
elsif year >= 2010
  puts 'New'
elsif year >= 2000
  puts 'Old'
elsif year >= 1900
  puts 'Very Old'
else
  puts 'Is this a car or a horse?'
end
