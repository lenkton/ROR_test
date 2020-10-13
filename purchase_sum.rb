purs = {}
loop do
  purchase = gets.split
  break if purchase[0] == "Стоп"
  purs[purchase[0]] = {:price => purchase[1].to_i, :quantity => purchase[2].to_f}
end
puts purs
total = 0.0
for p in purs
  puts "#{p[0]} в сумме: #{sum = p[1][:price]*p[1][:quantity]}"
  total+= sum
end

puts "Общая стоимость: #{total}"

