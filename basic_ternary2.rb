puts "How old are you?"
ageInput = gets.chomp.to_i
puts "Are you a citizen?"
citizenInput = gets.chomp.downcase

(ageInput >= 18) && (citizenInput == "yes") ? (puts "You are eligible to vote!") : (puts "You are ineligible to vote!")

