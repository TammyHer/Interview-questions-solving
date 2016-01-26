# 2 question - Check if a the array is Palindrome

def palindrom(array)
  return nil if array.nil?
  return array if array.length==1
  if !palindrom_recursive(array)
    return false
  else
    return true
  end
end

def palindrom_recursive(array)
  return true if array.nil? || array.length <= 1
  return false if array[0] != array[-1]
  palindrom_recursive(array[1..array.length-2])
end

  array_two = ["a","b","c","c","b","a"]
  puts "The original array is : #{array_two}"
  if palindrom(array_two)
    puts "this is palindrom"
  else
    puts "this is not palindrome"
  end
