# Business Logic

class Puppy

  def fetch(toy)
    puts "The puppy brought back the #{toy}"
    toy
  end

  def speak(number)
      number.times {print "Woof", " "}
  end

  def roll_over
    puts "Roll Over"
  end

  def dog_years(age)
    p age * 7
  end

  def shake_hands_w_paw(name)
   puts "Puppy, please shake hands with our friend #{name}"
  end

  def initialize    #Always spell check initialize. It will create a new print this method anytime a new instance is made
    puts "Initializing new puppy instance"
  end

end




# Test Code



# Driver Code

a = Puppy.new
a.fetch("ball")
puts "Oh yea!"

b = Puppy.new
b.speak(5)
puts "- Looking good!"


c = Puppy.new
c.roll_over
puts "Correcto Mundo!"

d = Puppy.new
d.dog_years(7)
puts "Math adds up!"

e = Puppy.new
e.shake_hands_w_paw("Allison")
puts "Shake hands instance works!"