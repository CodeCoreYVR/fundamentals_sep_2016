def addition(*args)
	total = 0
	args.each {|arg| total += arg if arg.is_a? Fixnum}
	total
end

# puts addition(1,2,3,'travis',4,5)


def multiply(*args)
	total = 1
	if args.length > 0
		args.each {|arg| total *= arg if arg.is_a? Fixnum}
	end
	return total
end

# puts multiply('travis',2,2,'test', 4, 5, 6, 7)


def alt_adder(*args)
	args.inject(0){|total, num| total + num if num.is_a? Fixnum}
end

# puts alt_adder(1,2,3,4,5)

def alt_multiply(*args)
	args.inject(1){|total, num| total * num if num.is_a? Fixnum}
end

def alt_powers(*args)
	args[1..args[-1]].inject(args[0]){|total, num| total ** num  if num.is_a? Fixnum}
end

# puts alt_powers(3,3,3)

