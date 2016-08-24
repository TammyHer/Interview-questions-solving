# https://www.codewars.com/kata/greed-is-good/train/ruby

def score( dice )
  diceArr = []
  result = 0

  dice.each do |die|
    diceArr[die].nil? ? diceArr[die] = 1 : diceArr[die] += 1
   end

  if !diceArr[0].nil?
    if diceArr[0] > 2
      result += 1000
      diceArr[0] -= 3
    end
    if diceArr[0] > 0
      result += diceArr[0] * 100
    end
  end
  if !diceArr[4].nil?
     result += 5 * diceArr[4] * 10
  end

  for i in 1..5
    if !diceArr[i].nil? && diceArr[i] > 2
      result += i+1 * 100
      diceArr[i] -= 3
    end
   end
   return result
end
      
