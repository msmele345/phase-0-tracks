require_relative  'word_guess.rb'

describe GuessGame do
  let(:game) { GuessGame.new }

  it "sets the users secret word" do
    expect(game.secret_word("Apple")).to eq ("Apple")
  end

  it "stores the player 1 input on initialization" do
    expect(game.guess_check("test")).to eq ["test"]
  end

  it "displays the remaining amount of guesses for player 1" do
    expect(game.guesses).to eq 3
  end

  it "displays current list .of guesses thus far in the game from player 1" do
    expect(game.word_display).to_eq ["guess 1", "guess2", "guess3"]
  end

end


