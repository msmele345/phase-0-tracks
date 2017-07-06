#TRICKY ALGO 5.5

#Split string into an array
#Reverse the two words using .reverse and join them back together.
#Use downcase to lowercse all letters
#Create vowels and non vowel variables to use as reference points
#loop through string and determine if current letter is a vowel or non vowel.
#Create seperate methods to advance letters from current vowel or non vowel to next
#call methods once a vowel or non vowel is found while iterating
#Account for spaces in the conditional logic
#Capitalize first letter of each new word in final string before printing

def vowel(letter)
  vowels = "aeiou"
  vowel_index = vowels.index(letter) + 1
  next_letter = vowels[vowel_index]
end

def non_vowel(letter)
non_vowels = "bcdfghjklmnpqrstvwxyz"
non_vowel_index = non_vowels.index(letter) + 1
next_letter = non_vowels[non_vowel_index]
end


def letter_changer(string)
vowels = "aeiou"
non_vowels = "bcdfghjklmnpqrstvwxyz"
string = string.split.reverse.join(' ').downcase
final_string = ''
letter = 0
while letter < string.length
  if vowels.include?(string[letter])
    final_string += vowel(string[letter])
  elsif non_vowels.include?(string[letter])
    final_string += non_vowel(string[letter])
  elsif string[letter] == " "
    final_string += " "
  end
  letter+=1

end
#capitalize each first letter in the string using map

p final_string.split.map(&:capitalize).join(' ')
end

#Driver Code

#Create empty hash to be used for the data structure
#Setup basic loop to repeatedly ask user for names that need to be changed to secret alias
#Call the letter changer method and pass in the user input to generatge secret alias. Store this name in a variable fake name
#Use .store to place the fake name and original name (user input) as key value pairs
#Break out of loop when user hits enter on the keyboard (blank entry)
#Iterate through hash and print the key value pairs with "is actually" in between them


master_file = {}

puts "Secret name generator. WARNING! This machine creates secret undercover names and should only be used for classified operations."

puts "To get started, please enter a real name. The machine will generate a secret name and store it in a file that you can access later. When you are finished, please press enter on your keyboard."

loop do

  puts "What name do you need changed?"
  user_input = gets.chomp

  puts "Sweet, here is a secret name. It will be stored in the secret name database."
  fake_name = letter_changer(user_input)
  master_file.store(user_input,fake_name)

  #puts master_file

  if user_input.empty?
    break
  end
end

#Setup next statement to pass over the blank entry that was generated from hitting enter to break out of the loop

master_file.each do |i,v|
  next if i == ""
  p i + " is actually " + v
end

# Delete unwanted "" key (generated from hitting enter to break out of the loop) from the hash

master_file.delete("")

p master_file



#Test cases for letter changer method

# letter_changer("Felicia Torres")
# letter_changer("Mitch Mele")
