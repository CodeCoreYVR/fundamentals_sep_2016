bc_cities_population = {vancouver: 2135201, victoria:  316327, abbotsford: 149855, kelowna: 141767, nanaimo:  88799, white_rock: 82368, kamloops: 73472, chilliwack: 66382 }

# Write a method that takes the hash above and returns an array of the values divided by 1000 in one line of code.

def array_from_hash(hash)
	hash.values.map {|value| value / 1000}
end

p array_from_hash(bc_cities_population)

p new_arr = bc_cities_population.values.map {|value| value / 1000}
