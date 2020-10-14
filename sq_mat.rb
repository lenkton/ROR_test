def det(mat)
  if mat.length == 1
    return mat[0][0]
  end
return (mat[0].map.with_index{
  |x,index| (-1)**index * x * det(
    mat[1,mat.length].map{
      |line| line.reject.with_index{
        |a, ind| ind == index
      }
    }
  )
}).reduce{|res,a|res+a}
end
  
matrix = []
empty_flag = false
quit_flag = false
loop do
  row=[]
  row_int = []
  loop do
    s = gets.chomp
    if s.empty? && empty_flag
      quit_flag = true
    end
    if s.empty?
      empty_flag = true
      break
    end
    empty_flag = false
    row += s.split(',')
    for a in row
      row_int.push (a.chomp.to_i)
    end
  end

  if quit_flag
   break
  else 
    matrix.push row_int
  end
end
print matrix
puts ''

l = matrix.length
is_sq = matrix.reduce(true){|result,a| result && (a.length==l)}

if is_sq
  puts (det matrix)
else
  puts "Матрица не квадратная!"
end

