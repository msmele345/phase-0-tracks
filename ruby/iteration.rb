def status_message
  puts "Welcome to the zoo!"
  animal1 = "Lion"
  animal2 = "Tiger"
  yield(animal1, animal2)
  puts "Thank you for visiting the zoo!"

end

  status_message { |animal1, animal2| puts "The #{animal1} is asleep for the night, but you can still see #{animal2} in the park."}


zoo_animals = ["monkey", "bird", "lion", "tiger", "unicorn"]
p zoo_animals

# Add ! point to show that array has not been changed

zoo_animals.each do |animal|
  puts animal + "!"
end

p zoo_animals

# Map each element in the array and change the strings to upcase. Print the array after to show that it was in fact changed.

zoo_animals.map! do |animal|
  animal.upcase
end

p zoo_animals

animal_features = {
  monkey: "climb",
  bird: "fly",
  lion: "roar",
  tiger: "pace",
  unicorn: "be secret"
}

p animal_features

animal_features.each do |animal, feature|
  puts "The #{animal} can #{feature}!"
end

p animal_features


# Create an array of integers
# Create empty array to assign new numbers above 5

# Number 1

numbers = [1,2,3,5,7,9,12]
numbers.keep_if {|num| num <= 5}


# Number 3
new_numbers = numbers.select {|num| num.odd? }

puts new_numbers

puts numbers

# a.keep_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]

#Number 2

number_of_clothes = {
  hats: 3,
  shirts: 5,
  pants: 16,
  shoes: 7
}


number_of_clothes.delete_if {|clothes, count| count > 10}


puts number_of_clothes


# Number 4

question_four = [2,4,6,7,8,9,10,11,3,1]

new_question_four = question_four.drop_while {|num| num < 6}

p new_question_four

# h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}