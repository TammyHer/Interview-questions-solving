# return "" if empty
# iterate one time in the string, for each word -
  # move last letter to the end + add ADD
# join the string

# Move the first letter of each word to the end of it, then add 'ay' to the end of the word.
#
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
def pig_it (text)

 addition = "ay"
  return text.split(" ").map do |word|
    break if word.gsub(/[^a-zA-Z]/, '').empty?
    if word.length == 1
      word = word + addition
    else
      word = word[1..word.length-1] + word[0] + addition
    end
 end.join(" ")

end
