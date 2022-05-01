def bye_bye_3_and_5(num)
	num = num.to_i
	results = []
	for n in 1..num
		if (n % 3 != 0) && (n % 5 != 0)
			results.push(n)
		end
	end
	return results
end
