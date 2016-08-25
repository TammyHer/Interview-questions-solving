# https://www.codewars.com/kata/greed-is-good/train/ruby

def score( dice )
  diceArr = []
  result = 0

  dice.each do |die|
    diceArr[die].nil? ? diceArr[die] = 1 : diceArr[die] += 1
   end

  if !diceArr[1].nil?
    if diceArr[1] > 2
      result += 1000
      diceArr[1] -= 3
    end
    if diceArr[1] > 0
      result += diceArr[1] * 100
    end
  end

  for i in 2..6
    if !diceArr[i].nil? && diceArr[i] > 2
      result += i * 100
      diceArr[i] -= 3
    end
  end

   if !diceArr[5].nil? && diceArr[5] > 0
     result += 5 * diceArr[5] * 10
   end

   return result
end
