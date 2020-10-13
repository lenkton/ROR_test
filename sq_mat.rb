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
print [[123231,123123,12312],[],[]]
puts ''


