# It's time to create an autocomplete function! Yay!
#
# The autocomplete function will take in an input string and a dictionary array and return the values from the dictionary that start with the input string. If there are more than 5 matches, restrict your output to the first 5 results. If there are no matches, return an empty array.
#
# Example:
#
# For this kata, the dictionary will always be a valid array of strings. Please return all results in the order given in the dictionary, even if they're not always alphabetical. The search should NOT be case sensitive, but the case of the word should be preserved when it's returned.
#
# For example, "Apple" and "airport" would both return for an input of 'a'. However, they should return as "Apple" and "airport" in their original cases.
#
# check for empty array , nil .. etc
# resulyAree
# if dic-word < input - don't check
# check substring of the word in legth of input == input (both downcase) - yes, push.
# .gsub(/[^a-zA-Z]/, '')
# iterate thru the array - check if the word start with the input


def autocomplete(input, dictionary)
  resultArr = []
  tempInput = downle(input) # input only letters
  return dictionary[0..4] if input == ""

  dictionary.each do |word|
    break if resultArr.length > 4
    resultArr.push(word) if downle(word)[0..tempInput.length-1] == tempInput
  end

  return resultArr
end


def downle(string)
  return string.gsub(/[^a-zA-Z]/, '').downcase
end
