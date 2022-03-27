puts "What hour of the day is it?"
hourInput = gets.chomp.to_i

case hourInput
when 7..11
    puts "Good morning!"
when 12
    puts "Lunchtime"
when 13..18
    puts "Afternoon blues"
when 19, 20
    puts "Dinnertime"
when 0..6, 21..23 
    puts "Sleepy time"
else
    puts "That is not correct 24hr time!"
end