#Business Logic for RELEASE #4
#Follow Release instructions, one at a time. Don't look ahead and focus on one thing at a time (Personal Reminder).

#Make a bunch of santas with randomly selected genders and ethnicities
#The new santas should have a random age between 0-140
#Print all of the randomly generated santa demographics in a neat, easy to read form

#INPUT = New santa instances (use a counter or loop to create many at the same time)
#OUTPUT = A bunch of new santas with a random age, gender, and ethnicity. These should be printed out at the end.

class Santa
    attr_reader :age, :ethnicity
    attr_accessor :age, :ethnicity, :gender

  def initialize
    ethnicities = ["Black", "Latino", "White", "Asian", "prefer not to say"]
    genders = ["Agender", "Female", "Bigender", "Male", "Female", "Gender fluid", "N/A"]
    @gender = genders[rand(0..7)]
    @ethnicity = ethnicities[rand(0..5)]
    @age = rand(0..140)
    puts "New Santa Job Application!"
    puts "Here are the applicants demographics: "
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  #Print Method to check attributes at any time:
  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Current Age: #{@age}"
    puts()
  end

end


#DRIVER CODE


rand(0..50).times do
  new_santa = Santa.new
  new_santa.speak
  new_santa.about
end




# Releases 0-3

# class Santa
#     attr_reader :ethnicity, :age
#     attr_accessor :gender

#   def initialize(gender,ethnicity)
#     @gender = gender
#     @ethnicity = ethnicity
#     @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#     @age = 0
#     puts "initializing Santa Instance"
#   end

#   def speak
#     puts "Ho, ho, ho! Haaaappy holidays!"
#   end

#   def eat_milk_and_cookies(cookie)
#     puts "That was a good #{cookie} cookie!"
#     puts()
#   end


#   #setter methods (Attribute changing)

#   def celebrate_birthday
#   @age = @age +1
#   end

#   def get_mad_at(name)
#     @reindeer_ranking.delete(name)
#     @reindeer_ranking.insert(-1,name)
#   end

    #Old setter example :

#   # def gender=(new_gender)
#   #   @gender = new_gender
#   # end

#   # Print Method to check attributes at any time if needed:

#   def about
#     puts "Gender: #{@gender}"
#     puts "Ethnicity: #{@ethnicity}"
#     puts "This santa is: #{@age}"
#     puts()
#   end

# end


# # DRIVER CODE

# fake_santa = Santa.new("female", "white")
# puts "This santa is #{fake_santa.age} years old"
# fake_santa.speak

# #TEST GET_MAD_AT INSTANCE METHOD
# fake_santa.get_mad_at("Vixen")

# #TEST BIRTHDAY METHOD (PREVIOUS AGE SHOWING ABOVE AT START OF DRIVER CODE)
# puts "This santa is now #{fake_santa.celebrate_birthday} years old after celebrating his birthday."

# fake_santa.eat_milk_and_cookies("Chocolate Chip")

# #Test attr_accessor:

# fake_santa.about
# fake_santa.gender = "Agender"
# fake_santa.about




