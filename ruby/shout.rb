#Require_relative to load new modules
#Make sure to use ''
#Modules can be mixins to classes - like a toolbelt for any once class(spot the puppy) instance.
#Standalone Modules need SELF to call instance methods. Mixins do not

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#      words + "!!!" + " :)"
#   end
# end

# #DRIVER CODE


# p Shout.yell_angrily("This is tough")
# p Shout.yell_happily("Ahh yea, I got it")



#Release 3 Place mixin Shout module at the top

module Shout
  def screetchy_shout(shout)
    puts "#{shout} ------------ :/"
  end

  def scared_shout(shout)
    puts "#{shout}!!!!!!!!!!!!!!!!!!! :-O"
  end

end

#Create two new classes and include the module above

class Monkey
  include Shout
end

class Human
  include Shout
end

#Driver Code

puts "this is the monkey class"
new_monkey = Monkey.new
new_monkey.screetchy_shout("eeeeehhhhhhhhhhh")
new_monkey.scared_shout("AHHHHHHH")
puts()
puts "this is the human class"
new_human = Human.new
new_human.screetchy_shout("Oh no")
new_human.scared_shout("Yeeeeeeeeek")