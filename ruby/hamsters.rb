##trying to ask user series of hamster questions, end is printing to ruby
## puts "question"
## gets.chomp statment
## if age == "" then puts nil
## else puts user-input-age

def hamster_questionare
  puts "What is the hamsters name?"
  name = gets.chomp

 puts "What is hamsters volume level 1-10"
  volume = gets.chomp.to_i

 puts "What is the fur color?"
  color = gets.chomp

 puts "Is this hamster a good adoption candidate? Y/N"
  adoption = gets.chomp

 puts "what is the estimated age of the hamster?"
  age = gets.chomp
  if age == ""
    age = nil
  else
    age.to_i
  end

  puts "Hamster name: #{name}"
  puts "Hamster volume: #{volume}"
  puts "Hamster fur color: #{color}"
  puts "Hamster is adoptable: #{adoption}"
  puts "Hamster age: #{age}"

end

hamster_questionare