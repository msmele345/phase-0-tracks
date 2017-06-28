#Create hash for application questions
#Have each question be a key, each answer be the value
#print hash at the end of the program to show results
#Create driver code below to ask the designer questions
#

# app = {
#   :client_name => name,
#   :client_age => age,
#   :number_of_children => kids,
#   :decor_theme=> theme,
#   :previous_design => past
# }


# puts app[:name]


#DRIVER CODE
puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "How many children do you have?"
kids = gets.chomp.to_i

puts "What is your preferred theme?"
theme = gets.chomp

puts "A designer has been hired in the past (True/False)"
past = gets.chomp

puts "Do you need to change any information on the form? If not, please enter None"
changes = gets.chomp


app = {
  :client_name => name,
  :client_age => age,
  :number_of_children => kids,
  :decor_theme=> theme,
  :previous_design => past
}

#Check to see if user wants to change any information before submitting. If the answer is not NONE, then find a way to take the user input and modify the hash.
#User conditional logic to do this below
#How can I take user input on modified answer and replace existing hash rather than add a new key value pair?

if changes != "None"
  puts "Which section would you like to change?"
    modification = gets.chomp.to_sym
  puts "What is the correct information?"
    changed_answer = gets.chomp
    # app[:modification] = changed_answer
    app[:"#{modification}"] = changed_answer
    p app
 else
  p app
end




# puts "Name test"

# if :hired == true
#  app[:success] ="yes"
# end