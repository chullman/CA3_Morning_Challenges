# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing) 
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly 
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

def generate_alphabet
    ('a'..'z').to_a
end
  
def is_lowercase(letter)

    if letter.downcase == letter
        return true
    else
        return false
    end

end
  
  def missing_letter(word)
      # your code goes here
      orig_alphabet = generate_alphabet
      converted_alphabet = []
  
      if is_lowercase(word[0])
          converted_alphabet = orig_alphabet.map do |letter|
              letter.downcase
          end
      elsif !(is_lowercase(word[0]))
          converted_alphabet = orig_alphabet.map do |letter|
              letter.upcase
          end
      end
  
      starting_letter_pos = converted_alphabet.index word[0]
      starting_letter = converted_alphabet[starting_letter_pos]
      next_letter_in_alpha_counter = starting_letter_pos
  
      word.each do |letter|
          if letter == converted_alphabet[next_letter_in_alpha_counter]
              next_letter_in_alpha_counter += 1
          else
              return converted_alphabet[next_letter_in_alpha_counter]
          end
      end
  end