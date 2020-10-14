string = gets 
string = string.split
a = string[0].to_f
b = string[1].to_f
c = string[2].to_f

puts(d = b**2 - 4*a*c)
if (d - 0.0000001).abs < 0
  puts ((-b)/(2*a))
else
  puts "Корней нет" if d < 0
  if d > 0
    puts((d**0.5 - b)/(2*a))
    puts((-1*(d**0.5) - b)/(2*a))
  end
end
