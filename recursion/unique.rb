# Write a method to determine if a string is all unique characters.
require 'pry'

def unique(str)
  return nil if str.nil?
  return true if str.length == 1
  if !unique_re(str)
    return false
  else
    return true
  end
end

def unique_re(str)
  return str if str.length == 1
  return false if str.chop.include?(str[-1])
  # binding.pry
  unique_re(str.chop)
end

string = "assdfgh"

puts "the string is #{string}"
puts "all characters are unique" if unique(string)
# puts "NOT all characters are unique" if !unique(string)
