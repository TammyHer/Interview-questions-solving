#Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contains any char.

#Examples input/output:

#XO("ooxx") => true
#XO("xooxx") => false


def XO(str)
  #downcase
  # one count (initialize w/0) - add for X, sub for Y - check for 0 in the end.
  count = 0
  return true if str == ""
  str.downcase!
  
  str.each_char do |char|
    if char == 'x'
      count += 1
    elsif char == 'o'
      count -= 1
    end
  end
  
  return count == 0
end

#Other selotuins

def XO(str)
  str.downcase!
  str.count('o') == str.count('x')
end
