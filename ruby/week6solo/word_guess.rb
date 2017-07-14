class GuessGame
  # attn_accessor :secret_word
  def initialize
    @guess_log = []
    @guess_count = 0
    @game_over = false
  end

  def guess_check(guessed_word)
    @guessed_word = guessed_word
    @guess_log << @guessed_word
    if !@guess_log.include?(guessed_word)
       @guess_log << @guessed_word
       @guess_count +=1
    end
     @guess_log
  end

  def guess_tracker
    @guess_log
  end


end


# test_game = GuessGame.new  ##This will later be player 1 input?
# test_game.guess_tracker("phone")







#DRIVER CODE
# players = ["Player A", "Player B"]


puts "Time to play GUESS A YOUR FRIENDS SECRET WORD"
game = GuessGame.new
puts()
puts "Player A, please pick a secret word so we can get started. Write it down on a piece of paper and give it to me when done."
player_guess = gets.chomp
game.guess_check(player_guess)