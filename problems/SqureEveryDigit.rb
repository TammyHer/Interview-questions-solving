#Welcome. In this kata, you are asked to square every digit of a number.

#For example, if we run 9119 through the function, 811181 will come out.

#Note: The function accepts an integer and returns an integer


def square_digits(num)

  return 0 if num == 0 || num == nil
  
  arr_nums = []
  stringNums = ""
  
  while num != 0  
    current_num = num % 10
    arr_nums.push(current_num * current_num)
    num = num / 10
  end
  
  startP = 0
  endP = arr_nums.length-1
  
  while startP < endP 
    temp = arr_nums[startP]
    arr_nums[startP] = arr_nums[endP]
    arr_nums[endP] = temp
    endP -= 1
    startP += 1
  end
   
   arr_nums.each { |i| stringNums += i.to_s }
   
   return stringNums.to_i
   
end


#Other selutions

def square_digits num
  num.to_s.split('').map{|v| v.to_i * v.to_i}.join.to_i
end

def square_digits num
  # code goes here
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end
