# Write the numbers from 15 to 50 using upto.
# Write the letters from "O" to "B" using downto.

# upto
15.upto(50) { |i| puts i }

# downto
("B".."O").to_a.reverse.each { |i| puts i }
