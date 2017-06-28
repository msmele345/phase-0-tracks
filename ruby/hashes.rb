#Create hash for application questions
#Have each question be a key, each answer be the value
#print hash at the end of the program to show results
#Create driver code below to ask the designer questions
#

app = {
  :client_name => name
  :client_age => age
  :number_of_children => kids
  :decor_theme=> theme
  :previous_design => past
}


puts app[:name]


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

puts "Do you need to change any information on the form?"
changes = gets.chomp









# puts "Name test"

# if :hired == true
#  app[:success] ="yes"
# end

p app