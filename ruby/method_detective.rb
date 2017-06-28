# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1,"o")
# => “zoom”

p "enhance".center(20)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".concat(" suspects")
#=> "the usual suspects"

p " suspects".prepend("the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chop # OR string.slice(-1)
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"[1..-1] # string.slice(0)
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".strip
# => "Elementary, my dear Watson!"

p "z".ord    #Returns integer ordinal of the string. Z is at the 122 position in the UTF-8 codepoint
# => 122
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4r