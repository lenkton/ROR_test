string = gets 
string = string.split
a = string[0].to_i
b = string[1].to_i
c = string[2].to_i

puts(d = b**2 - 4*a*c)
if d < 0
  puts "Корней нет"
end
if d == 0
  puts ((-b)/(2*a))
end
if d > 0
  puts((d**0.5 - b)/(2*a))
  puts((-1*(d**0.5) - b)/(2*a))
end
