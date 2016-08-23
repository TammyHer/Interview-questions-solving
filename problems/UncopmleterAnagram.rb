def anagrams(word, words)
  return [] if words.empty? 
  hashWord = Hash.new
 
  What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false
Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []
  
  resultArr = []
  result = ""
  
  word.split.map { |char| hashWord[char] == nil ? hashWord[char] = 1 : hashWord[char] += 1 }
  tempHash = hashWord
  words.each do |word|
    for i in 0..word.length-1
      if tempHash.include?(i)
        if tempHash[i] != 0 
            tempHash[i] -= 1
          if i = word.length-1 # last char ? - need to push
            tempHash = hashWord
            resultArr.push(word)
          end
        else
          i = word.length-1
          tempHash = hashWord
         end
      else
        i = word.length-1
        tempHash = hashWord
      end
    end
  end
  
  return result  
end
