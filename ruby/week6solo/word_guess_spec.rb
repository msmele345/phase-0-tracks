require_relative  'word_guess.rb'

describe GuessGame do
  let(:game) { GuessGame.new }

  it "stores the player 1 input on initialization" do
    expect(game.guess_check("test")).to eq ["test"]
  end

  it "displays the how "

end



  def guess_check(guessed_word)
    @guessed_word = guessed_word
    @guess_log << @guessed_word
    # if !@guess_log.include?(guessed_word)
    #   @guess_log << @guessed_word
    #   @guess_count +=1
    # end
    @guess_count = @guess_count + 1
     @guess_log
  end
