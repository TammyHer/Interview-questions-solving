#1 question - return a reverse array of objects
require 'pry'
# answer

def reverse_array(array)
  return nil if array.nil?
  return array if array.length == 1
  new_array = []
  return reverse_array_in(new_array, array, 0)
end

def reverse_array_in(new_array, array, index)
  return array[index] if index == array.length - 1
  reverse_array_in(new_array, array, index +=1)
  new_array.push(array[index])
  return new_array
end

array_one = [1,2,3,4,5,6,7,8,9,10]
puts "The original array is : #{array_one}"
puts "the reverse array is : #{reverse_array(array_one)}"
