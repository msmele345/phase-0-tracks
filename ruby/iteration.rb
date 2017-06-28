def status_message
  puts "Welcome to the zoo!"
  animal1 = "Lion"
  animal2 = "Tiger"
  yield

end

  status_message { |animal1, animal2| puts "The #{animal1} is asleep for the night, but you can still see #{animal2} in the park."
