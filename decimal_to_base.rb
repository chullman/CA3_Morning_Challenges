def octal_convertor(num)
    results = ""
    while num > 0
        results = (num % 8).to_s + results
        num = num / 8
        
    end
    return results.to_i
end 
