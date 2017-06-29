#Explore the thing - Array practice from earlier in the challenge:
#Array = [12,2,2,3,6,10]
#Array[2] => 3
#Array.slice[-1] => 10
#Array.uniq! =>[12,2,3,6,10]
#Array

#Release 2

#Create hash for application questions
#Have each question be a key, each answer be the value
#print hash at the end of the program to show results
#Create driver code below to ask the designer questions



#DRIVER CODE


puts "Welcome to Bucktown Designs! We are excited that you choose us to help you incorporate some style into your life! Please fill out the below form to help us better understand what your looking for."

puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "How many children do you have?"
kids = gets.chomp.to_i

puts "How many square feet is your house?"
size = gets.chomp.to_i

puts "What is your preferred theme? (Examples of themes might be Vintage, Full of charm, or Modern)"
theme = gets.chomp

puts "Are there any particular hobbies or interests that you want incorporated into the design?"
interests = gets.chomp

puts "Do you need to go back and change any information on the form? If not, please enter No."
changes = gets.chomp


app = {
  :name => name,
  :age => age,
  :number_of_kids => kids,
  :home_size => size,
  :decor_theme=> theme,
  :hobbies => interests
}

#Check to see if user wants to change any information before submitting. If the answer is anything but No, then find a way to take the user input and modify the hash.
#Create condition logic that will ask for the section to change, then ask then ask for what the correct information should be
#Modify the exiting key/value pair by using interpolation and setting it to the correct answer variable

if changes != "No"
  puts "Which section would you like to change? (Please indicate the exact field title that needs to be changed)"
    modification = gets.chomp.to_sym
  puts "What is the correct information?"
    changed_answer = gets.chomp
    app[:"#{modification}"] = changed_answer
    puts "Thank you, your form has been updated! We will be contacting you shortly to setup a house visit!"
    puts app
 else
   puts "All set, we will be contacting you shortly to setup a house visit!"
   puts app
end

#Print final hash with a goodbye message
