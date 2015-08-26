counter = 1
until counter > 10
  puts counter
  counter += 1
end

puts "-------------------"

for num in 1..15
  puts num
end

puts "-------------------"

i = 20
loop do
  i -= 1
  next if i % 2 == 1
  puts "#{i}"
  break if i <= 0
end

puts "-------------------"

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end

puts "-------------------"

5.times { print "ha " }