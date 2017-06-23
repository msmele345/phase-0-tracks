
#Ask questions to user/define variables
#add conditional logic one line at a time
#update variables with most current condition



def vamp_finder
  detector_result = nil
  allergies = true
  while allergies == true # Or while answers.length > 0 OR while answer != "DONE"
    puts "Please indicate any allergies you may have."
    puts "If you have no allergies, please enter DONE in the space provided"
    answer = gets.chomp
#   Ask applicant if they have allergies. Set conditional logic to check answer. Kill loop   once allergies is flipped to false.

  if answer == " " || answer == "DONE"
    allergies = false
    puts "Thank you"
  elsif answer == "sunshine"
    allergies = false
    abort ("Probably a vampire.")

 end
end


  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  born = gets.chomp.to_i

  puts "Would you like some garlic bread? (y/n)"
  garlic = gets.chomp
# set garlic and insurance input to boolean values
    if garlic == "y"
      garlic = true
    else
      garlic = false
    end
  puts "Would you like health insurance? (y/n)"
  insurance = gets.chomp

    if insurance == "y"
      insurance = true
    else
      insurance = false
    end


#Create variable for age check

correct_age = 2017-born

p correct_age
#compare user input for age to actual age (current year - year born)
  if correct_age == age && (garlic == true || insurance == true )
    detector_result = "Probably not a vampire."
  ## Continue adding conditional logic, then update the result variable as need
  end

  if correct_age != age && (garlic == false || insurance == false)
    detector_result = "Probably a vampire."
  else
    direct_result = "Results inconclusive"
  end

  if  (garlic == false && insurance == false) && correct_age != age
    detector_result = "Almost certainly a vampire."
  else
    direct_result = "Results inconclusive"
  end

  if name == "Drake Cula" || name == "Tu Fang"
   detector_result = "Definitely a vampire."
  end
p detector_result
p  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end


vamp_finder
