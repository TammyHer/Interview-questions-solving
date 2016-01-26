# Design a method that returns true
#  if element n is a member of the array and false if not

def search(array, n)
  return nil if array.nil?
  if array.length == 1
    return true if array[0] == n
    return false if array[0] != n
  end
  return search_re(array, n)
end


def search_re(array, n)
  return array[0] if array.length == 1
  return true if array[0] == n
  search_re(array[1..array.length-1], n)
end

array = [1,4,6,7,4,33,2,5,6,5,5]
puts "No the number 12 is not an element in the array" if search(array, 12)
puts "Yes the number 4 is an element in the array" if search(array, 4)
