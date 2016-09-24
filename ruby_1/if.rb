print 'give me a number: '

number = gets.to_i

# in if statement, we're expected to provide an expression that returns true
# or false. If the expressions evaluates to true it will execute the code within
# the `if` block, otherwise it will execute the code in the `else` block
# `if` is always required. `else` is optional
# if number > 100
#   # indentation is highly encouraged but not required
#   puts 'The number is large'
# else
#   puts 'The number is small'
# end

# if you have more than two possibilities you can use `elsif`, you can optionally
# have one or more elsif (you can only have one if and one else)
# the execution happens top to bottom. As soon as a condition is met, it will
# execute the block for that condition and skips the rest.
if number > 100
  puts 'The number is large'
elsif number > 70
  puts 'The number is medium'
elsif number > 40
  puts 'The number is small'
else
  puts 'The number is extra small'
end
