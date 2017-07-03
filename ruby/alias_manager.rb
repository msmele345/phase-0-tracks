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

letter_changer("Felicia Torres")
letter_changer("Mitch Mele")
