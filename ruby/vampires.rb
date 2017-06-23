#Ask questions to user/define variables
#add conditional logic one line at a time
#update variables with most current condition



def vamp_finder
detector_result = ""

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  born = gets.chomp.to_i

  puts "Would you like some garlic bread? (y/n)"
  garlic = gets.chomp

  puts "Would you like health insurance? (y/n)"
  insurance = gets.chomp

#Create variable for age check

correct_age = 2017- born

p correct_age
#compare user input for age to actual age (current year - year born)
 if correct_age == age && (garlic == "y" || insurance == "y")
   detector_result = "Probably not a vampire."
  ## Continue adding conditional logic, then update the result variable as needed.
 elsif correct_age != age &&  (garlic == "n" || insurance == "n" )
   detector_result = "Probably a vampire."
 elsif  correct_age != age && garlic == "n" && insurance = "n"
   detector_result = "Almost certainly a vampire."
 elsif name == "Drake Cula" || name == "Tu Fang"
   detector_result == "Definitely a vampire."
 else
   detector_result == "Results inconclusive"
 end
  p detector_result
end

vamp_finder

