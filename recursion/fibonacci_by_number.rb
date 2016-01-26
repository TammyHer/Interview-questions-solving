#Write a method to generate the nth Fibonacci number.

def fibonacci(num)
  return 0 if num == 0 || num == 1
  return 1 if num == 2
  return fib_recursion(num)
end

def fib_recursion(num)
  return 1 if num == 2
  return 0 if num == 1
  result = fib_recursion(num - 1) + fib_recursion(num - 2)
  return result
end

puts "the fibonacci number for 3 is #{fibonacci(3)}"
puts "the fibonacci number for 6 is #{fibonacci(6)}"
puts "the fibonacci number for 9 is #{fibonacci(9)}"
