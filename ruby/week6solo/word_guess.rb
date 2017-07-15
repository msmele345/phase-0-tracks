#ALGO/BUSINESS LOGIC for 6.7
#Setup two files - one for testing and one for the program itself. Test each component of the game indivialually with rspec. Turn in only the program file.

#Create a two player game.
#The class is the  game, and both players will enter input in the driver code
#Guesses are capped at the length of the word secret word. Use count in class logic to track this (set count to 0 in initialize?)
#Setup conditional logic to count guesses.
  #If guess is the identical to previous guess, count stays the same

  #Otherwise, count increases by 1
#User gets a updated puts statement after each word containting any letters that are correct in the word. Create blank string to build this.
#If user guesses correct word, puts a congrats message
#Otherwise, user fails to guess the word, puts a failure message

#use module mixin for instance methods?

class GuessGame
  attr_accessor :secret_word
  attr_reader :guess_check, :guess_tracker, :about
  def initialize
    @guess_log = []
    @guess_count = 3
    @game_over = false
  end

  def secret_word (word)
    @secret_word = word
    @secret_word
  end

  def guess_check(guessed_word)
    @guessed_word = guessed_word
    if !@guess_log.include?(@guessed_word)
      @guess_log << @guessed_word
      @guess_count = @guess_count - 1
    end
    # p @guess_log  # + "#{@guess_count}"?
    # p "Guesses remaining: #{@guess_count}"
  end

  def word_display
    # @current_status = loop through secret word, if letter[i] is in secret word, print letter of i. If not, print "-" !!!!! STOPPING POINT
     @secret_word
  end

  def about
    puts "Here is your current list of word guesses: #{@guess_log}"
    puts "Guesses remaining: #{@guess_count}"
    puts word_display
  end

end


# test_game = GuessGame.new  ##This will later be player 1 input?
# test_game.guess_check("phone")


#DRIVER CODE



puts "Time to play GUESS YOUR FRIENDS SECRET WORD"
  game = GuessGame.new
puts()

puts "Player A, please guess what the secret word is. Enter only one guess at a time."
puts()

puts "Player B, please pick a secret word so we can get started. Write it   down on a piece of paper and give it to me when done."

game.secret_word = gets.chomp
puts()

puts "....The host turns his back to Player A, and shows the audience that the secret word is ........"
puts()

test_count = 3
while test_count > 0

  puts "Player A, please guess a word!"

  player_guess = gets.chomp
  game.guess_check(player_guess)
  test_count = test_count - 1
  puts()
  game.about

end

