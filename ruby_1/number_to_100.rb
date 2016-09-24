loop do
  print 'Please give us a number '
  number = gets.to_i

  if number <= 100
    for i in number..100
      puts i
    end
    break
  else
    puts 'You\'re above a hundred'
  end
end
