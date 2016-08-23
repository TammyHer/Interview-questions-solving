def validate(n)

  n = n.to_s
  sum = 0
  length = n.length 
  
 return nil if length > 16 || n.nil? || n == 0
    
  length % 2 == 0 ? start = 0 : start = 1 # start when to
  
  i = start
  while i < length-1
    if (n[i].to_i * 2) > 9
       sum += ( n[i].to_i * 2) % 10 + 1 
    else
      sum += n[i].to_i * 2
    end
    i += 2
  end
  
  start == 0 ? start = 1 : start = 0
  i = start
  while i < n.length-1
    sum += n[i].to_i
    i += 2
  end
  
  return sum % 10 == 0 
end
