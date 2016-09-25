#for loop
	for i in 1..100
		if i % 3 == 0 and i % 5 == 0
			puts "FizzBuzz"
		elsif i % 3 == 0
			puts "Fizz"
		elsif i % 5 == 0
			puts "Buzz"
		else
			puts i
		end
	end


#while loop
# i = 1
#
# while i <= 100 do
# 	if (i % 3 == 0) && (i % 5 == 0)
# 		puts "FIZZBUZZ"
# 	elsif (i % 3 == 0)
# 		puts "FIZZ"
# 	elsif (i % 5 == 0)
# 		puts "BUZZ"
# 	else
# 		puts i
# 	end
#
# 	i += 1
# end


#one line each
# puts (1..100).each {|n| p n % 15 == 0 ? "FizzBuzz" : n % 5 ==0 ? "Buzz" : n % 3 == 0 ? "Fizz" : n}
