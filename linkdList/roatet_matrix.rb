# rotate a matrix 90 degrees clock wise

#c alculate how many layers - > if length is even length/2, if odd (length/2 +1)
# for each layer start at i,j (0,0 / 1,1 / 2,2)
# move [row][col] to [col, length-1-row]

def rotate_matrix(matrix)
  return nil if matrix.nil?
  return matrix if matrix.empty?

  length = matrix.length
  layers = length / 2 + length % 2 # if it's odd, it'll add 1, 0 for even.
  queue = Queue.new
  for i in 0..layers - 1
    for row in i..length-2-i
      col = row
      queue.push(matrix[row][col])
      (1..4).times do
        queue.push(matrix[col][length-1-row])
        matrix[col][length-1-row] = queue.pop
        temp_row = row
        row = col
        col = length-1-temp_row 
      end
    end
  end


end
