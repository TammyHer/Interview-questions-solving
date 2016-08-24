# https://www.codewars.com/kata/523a86aa4230ebb5420001e1/train/ruby
# What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:
#
# 'abba' & 'baab' == true
#
# 'abba' & 'bbaa' == true
#
# 'abba' & 'abbba' == false
# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:
#
# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']
#
# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']
#
# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []
require 'pry'
def anagrams(word, words)
  return [] if words.empty?
  hashWord = Hash.new
  resultArr = []

  word.split("").map { |char| hashWord[char] == nil ? hashWord[char] = 1 : hashWord[char] += 1 }
  tempHash = hashWord.clone
  words.each do |wordi|
    tempHash = hashWord.clone
    if wordi.length == word.length
      for i in 0..word.length-1
        if tempHash.include?(wordi[i]) && tempHash[wordi[i]] != 0
          tempHash[wordi[i]] -= 1
          if (i == word.length-1)
            resultArr.push(wordi)
          end
        else
          break
        end
      end
    end
  end
  return resultArr
end

puts anagrams('racer', ['racar', 'racer', 'crazer', 'carer', 'caers'])
