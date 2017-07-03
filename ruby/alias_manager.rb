#TRICKY ALGO FIRST ATTEMPT

#Split string into an array
#Reverse the two words using .reverse and join them back together.
#Use downcase to lowercse all letters
#Create vowels and non vowel variables to use as reference points
#loop through string and determine if current letter is a vowel or non vowel. Push next vowel or non vowel into empty string
#Account for spaces in the conditional logic
#Capitalize final first leters of each words in final string before printing

def letter_changer(string)
vowels = "aeiou"
non_vowels = "bcdfghjklmnpqrstuvwxyz"
string = string.split.reverse.join(' ').downcase
#p string
final_string = ''
letter = 0
while letter < string.length
  if vowels.include?(string[letter])
    final_string+=string[letter].next
  elsif non_vowels.include?(string[letter])
    final_string+=string[letter].next
  elsif string[letter] == " "
    final_string+=" "
  end
  letter+=1

end
#capitalize each first letter in the string
p final_string.split.map(&:capitalize).join(' ')
end

letter_changer("Mitch Mele")