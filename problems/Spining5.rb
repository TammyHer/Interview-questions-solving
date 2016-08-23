# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
#
# Examples:
#
# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# spinWords( "This is a test") => returns "This is a test"
# spinWords( "This is another test" )=> returns "This is rehtona test"

def spinWords(string)
result = ""
  string = string.split(" ")
  string.map { |word| word = revers(word) if word.length > 4 }
  string.each do |word|
    result += word + " "
  end
return result.chomp(" ")

end

def revers(string)
  startP = 0
  endP = string.length-1

  while startP < endP
    temp = string[startP]
    string[startP] = string[endP]
    string[endP] = temp
    startP += 1
    endP -= 1
  end
  return string
end

# others code
def spinWords(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end



def spinWords(string)
  tokens = string.split(' ')
  newTokens = []
  tokens.each do |token|
    if token.size >= 5
      token.reverse!
    end
    newTokens.push(token)
  end
  return newTokens.join(' ')
end
