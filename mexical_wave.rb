# Mexican Wave
# We all know the 'Mexican Wave' (Nope? Google it!)

# Create a method that takes a string, and turns it into a Mexican Wave. Ignore spaces, and notice that everything else becomes down cased!

# E.g. mexican_wave("rabbit"), should return ["Rabbit", "rAbbit", "raBbit", "rabBit", "rabbIt", "rabbiT"]

# E.g. mexican_wave("Ole Ole Ole"), should return ["Ole ole ole", "oLe ole ole", "olE ole ole", "ole Ole ole", "ole oLe ole", "ole olE ole", "ole ole Ole", "ole ole oLe", "ole ole olE"]

# E.g. mexican_wave(""), should return []

def mexican_wave(str)
	results = []
	word = ""
	for to_upcase in 0..(str.length-1)
		if str[to_upcase] != " "
			for to_downcase in 0..(str.length-1)
				if to_upcase != to_downcase
					word += str[to_downcase].downcase
				else
					word += str[to_upcase].upcase
				end
			end
			results.push(word)
			word = ""
		end
	end
	results
end