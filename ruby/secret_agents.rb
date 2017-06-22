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
 puts new_string
end

encrypt("zed")


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
 puts backward_string
end

decrypt("bcd")
decrypt("afe")

