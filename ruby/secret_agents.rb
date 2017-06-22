# Set empty string variable
  #set index to 0
  #Loop through each character in the string
  #Apply conditional login for emptys spaces
  #Create login for edge cases
  #Apply .next method on each character and adding that to empty string variable
#return empty string variable

def encrypt (string)
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
  return new_string
end

encrypt ("abc")
