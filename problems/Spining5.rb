# Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (Just like the name of this Kata). Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
#
# Examples:
#
# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# spinWords( "This is a test") => returns "This is a test"
# spinWords( "This is another test" )=> returns "This is rehtona test"

def spinWords(string)
  currentState = "ready"
  result = ""

  for i in 0..string.length-1
    if string[i] != " "
      if currentState == "ready"
        currentStart = "word"
        startIndx = i
        count = 1
      elsif currentState == "word"
        count += 1
        if string[i+1] == " " || string[i+1] == nil
          endIndx = i
          result += revers(string, startIndx, endIndx) if count > 4
          result += string[startIndx..endIndx] if count < 5
        end
      end
     else
       currentState = "ready"
       count = 0
       result += " "
     end
  end
  return result
end

def revers(string, startIndx, endIndx)
  while endIndx != startIndx || startIndx < endIndx
    temp = string[startIndx]
    string[startIndx] = string[endIndx]
    string[endIndx] = temp
    startIndx += 1
    endIndx -= 1
  end
  return string
end


