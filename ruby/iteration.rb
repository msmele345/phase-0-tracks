# def status_message
#   puts "Welcome to the zoo!"
#   animal1 = "Lion"
#   animal2 = "Tiger"
#   yield(animal1, animal2)
#   puts "Thank you for visiting the zoo!"

# end

#   status_message { |animal1, animal2| puts "The #{animal1} is asleep for the night, but you can still see #{animal2} in the park."}


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
