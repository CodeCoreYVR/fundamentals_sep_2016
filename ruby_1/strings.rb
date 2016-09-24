name = 'john'

country = "Canada"

# capitalize is a method availble on Ruby strings. It turns the first letter
# to upper case and the rest of the letters to lower case
puts name.capitalize

first_name = 'Tam'
last_name  = 'Kbeili'

puts first_name + ' ' + last_name

# this is string interpolation. You must use double quotes with it
puts "#{first_name} #{last_name}"
puts '#{first_name} #{last_name}' # this will display literally (no interpolation)

puts "Hello World".gsub('Hello', 'Hi')
