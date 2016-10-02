# # Given an array of words, build a Hash where keys are words and values are the frequency of appearance of each word
#
# words = ["word", "another", "this", "is", "and", "that", "word", "another", "this", "is", "and", "that", "the", "strangest", "occurance"]
#
# letter_occurance = Hash.new(0)
# words.each {|word| word.split("").each {|letter| letter_occurance[letter] = letter_occurance[letter] += 1}}

# puts letter_occurance

# word_occurance = Hash.new(0)
# words.each {|word| word_occurance[word] += 1}
#
# puts word_occurance
#



words = ["boy", "boy", "girl", "man", "girl", "woman"]

recur = Hash.new(0)
words.each { |word| recur[word] += 1 }

puts recur
