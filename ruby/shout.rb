#Require_relative to load new modules
#Make sure to use ''
#Modules can be mixins to classes - like a toolbelt for any once class instance

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
     words + "!!!" + " :)"
  end
end

#DRIVER CODE


p Shout.yell_angrily("This is tough")
p Shout.yell_happily("Ahh yea, I got it")