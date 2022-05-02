# Create a method that will take a single string as an argument, and will return an ordered array containing the index of all capital letters.

# Return an empty array if no capitals are found. There may be some special characters included.

# E.g. capital_index("rABbiT"), should return [1, 2, 5]

# E.g. capital_index("lowercase"), should return [ ]

# E.g. capital_index("!@#HI!"), should return [3, 4]

def capital_index(str)
	letters = str.split('')
	results = []

	letters.each_with_index do |letter, index|
		if letter.upcase == letter && ('A'..'Z').to_a.include?(letter.upcase)
			results.push(index)
		end
	end

	results

end
