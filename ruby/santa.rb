#Business Logic Algos
#Follow Release instructions, one at a time


class Santa

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "initializing Santa Instance"
    # puts "This santa is #{@gender} and #{@ethnicity}"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
    puts()
  end

  #getter methods

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  #setter methods (Attribute changing)

  def celebrate_birthday
  @age = @age +1
  end

  def get_mad_at(name)
    @reindeer_ranking.delete(name)
    @reindeer_ranking.insert(-1,name)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  #Print Method to check attributes at any time:
  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Current Age: #{@age}"
    puts "Current Rankings: #{@reindeer_ranking}"
    puts()
  end

end


# DRIVER CODE

fake_santa = Santa.new("female", "white")
puts "This santa is #{fake_santa.age} years old"
fake_santa.speak
fake_santa.get_mad_at("Vixen")
puts "This santa is now #{fake_santa.celebrate_birthday} years old after celebrating his birthday."
fake_santa.eat_milk_and_cookies("Chocolate Chip")
fake_santa.about






# santas = []

# 5.times do |santa|
#   santas <<  Santa.new("Male","Hispanic")
#   santas
# end

# santas.each do |x|
#   x.speak
#   x.eat_milk_and_cookies("Double Chocolate")
# end
