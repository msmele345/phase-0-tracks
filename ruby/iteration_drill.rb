# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each {|x| print x, "*"}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

#Reverse sort, then forward sort using two iterations
zombie_apocalypse_supplies.each_index do |first|
  (first + 1...zombie_apocalypse_supplies.length).each do |second|
    if zombie_apocalypse_supplies[first] > zombie_apocalypse_supplies[second]
      zombie_apocalypse_supplies[first], zombie_apocalypse_supplies[second] = zombie_apocalypse_supplies[second], zombie_apocalypse_supplies[first]
    end
  end
end

puts [zombie_apocalypse_supplies]

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

# ----

def supply_check(supply)
i = 0
found_supply = false
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]
  while i < zombie_apocalypse_supplies.length
    if zombie_apocalypse_supplies[i] == supply
      found_supply = true
    end
    i+=1
 end

  if found_supply
    puts "We have this supply already!"
  else
    puts "We dont have this? Should we go looking for it before we depart?"
  end
end

supply_check("hatchet")
supply_check("axe")


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
count = 3
while count > 0
zombie_apocalypse_supplies.slice!(-1)
count = count -1
end

puts zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

# ----

total_supplies = zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq!

puts total_supplies


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each { |animal, date| puts animal + "-", date , "*"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.

extinct_animals.each do |animal, extinct_date|
  next if extinct_date < 2000
  puts animal, extinct_date
end

# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

# ----

extinct_animals.each do |animal, extinct_date|
  extinct_animals[animal] = extinct_date -3
end

puts extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

extinct_animals.each do |animal, extinct_date|
  if animal == "Dodo"
    puts "The Dodo is extinct"
  elsif animal == "Andean Cat"
    puts "The Andean Cat is extinct"
  elsif animal == "Saiga Antelope"
    puts "The Saiga Antelope is extinct"
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

#Custom Shift Method for Hashes
#Delete returns the value of that key (animal) and deletes it from the hash

def update_list(extinct_hash, animal)
  [animal, extinct_hash.delete(animal)]
end

update_list(extinct_animals,"Passenger Pigeon")

