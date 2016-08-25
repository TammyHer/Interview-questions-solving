# The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that character appears only once in the original string, or ')' if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
#
# Examples:
#
# "din" => "((("
#
# "recede" => "()()()"
#
# "Success" => ")())())"
#
# "(( @" => "))(("

def duplicate_encode(word)
  charHash = Hash.new
  result = ""

  reutn "" if word.empty? || word.nil?

  word.each_char do |char|
    char.downcase!
    charHash[char].nil? ? charHash[char] = 1 : charHash[char] += 1
  end

  word.each_char do |char|
    char.downcase!
    charHash[char] > 1 ? result += ")" : result += "("
  end

  return result
end

#other selutions

def duplicate_encode(word)
  word.downcase.chars.map do |char|
    word.downcase.count(char) > 1 ? ')' : '('
  end.join
end

# not affiaint

def duplicate_encode(word)
  word.downcase!
  word.chars.map do |c|
    if word.count(c) > 1
      ')'
    else
      '('
    end
  end.join
end
