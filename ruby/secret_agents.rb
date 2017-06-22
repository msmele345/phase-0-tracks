# Set empty string variable
  #set index to 0
  #Loop through each character in the string
  #Apply conditional login for emptys spaces
  #Create login for edge cases
  #Apply .next method on each character and adding that to empty string variable
#return empty string variable


def encrypt(string)
 new_string = ""
 i = 0

 while  i < string.length
  if string[i] == " "
     new_string += " "
  elsif string[i] == "z"
    new_string += "a"
  else
    new_string += string[i].next
  end
  i+=1
 end
 new_string
end


def backwards(letter)
  alpha = "abcdefghijklmnopqrstuvwxyz"
  previous_index = alpha.index(letter) -1
  prevous_letter = alpha[previous_index]
end


def decrypt (string)
  backward_string = ""
  j = 0
  while j < string.length
    if string[j] == " "
      backward_string += " "
    else
      backward_string += backwards(string[j])
   end
   j+=1
 end
   backward_string
end

#DRIVE CODE

# Get user input for decrypt and encrypt
# Get user input for password
# call the correct method based of the response.


puts "Would you like to encrypt or decrypt your password?"
answer = gets.chomp
  if answer == "encrypt"
    puts "Enter Password"
    password = gets.chomp
    puts encrypt(password)
  elsif answer == "decrypt"
    puts "Enter Password"
    password = gets.chomp
    puts decrypt(password)
  else
    puts "Error, invaid entry"
end

# puts encrypt("zed")
# puts encrypt ("abc")
# puts decrypt("bcd")
# puts decrypt("afe")
#Its calling both methods. Encrypt first and then the second method is called to reverse it.
# puts decrypt(encrypt("swordfish"))