# Your code here
puts "What is the temperature?"

userInput = gets.chomp.to_i

if userInput < 15
    puts "It's too cold"
elsif userInput >= 15 && userInput <= 28
    puts "It's beautiful today"
elsif userInput > 28
    puts "It's too hot"
end