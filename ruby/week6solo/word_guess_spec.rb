require_relative  'word_guess.rb'

describe GuessGame do
  let(:game) { GuessGame.new }

  it "stores the player 1 input on initialization" do
    expect(game.guess_check).to eq ["#{guessed_word}"]
  end


end