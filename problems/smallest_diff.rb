# Given a list of unsorted integers, find the smallest absolute difference between two of them.
require 'pry'
def small_diff(array)
  return nil if array.nil?
  return array if array.length == 1
  return (array[1] - array[0]) if array.length == 2
  array.sort!
  i = 0
  min = array[-1] - array[0]
  while i < array.length-1
    if (array[i] - array[i+1]).abs < min
      min = (array[i] - array[i+1]).abs
      # binding.pry
    end
    i += 1
  end
  return min
end
array_one = [2,100,40,200,30,45,6000,4,8]

puts array_one
puts "this is the smallet difference between two numbers in this array"

puts small_diff(array_one)
