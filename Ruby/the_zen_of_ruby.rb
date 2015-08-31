ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

20.times { print '-' }
puts

puts true ? 'Ruby is brilliant' : 'Ruby is not brilliant'

20.times { print '-' }
puts

puts "Hello there!"
greeting = 'French'

case greeting
  when 'English'
    then puts 'Hello!'
  when 'French'
    then puts 'Bonjour!'
  when 'German'
    then puts 'Guten Tag!'
  when 'Finish'
    then puts 'Haloo!'
  else
    puts "I don't know that language"
end

20.times { print '-' }
puts

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

20.times { print '-' }
puts

def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

20.times { print '-' }
puts

def a
  puts "A was evaluated!"
  true
end

def b
  puts "B was also evaluated!"
  true
end

puts a || b
puts "----"
puts a && b

20.times { print '-' }
puts

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {|number| puts number if number % 2 == 0}

20.times { print '-' }
puts

"L".upto("P") {|char| puts char}

20.times { print '-' }
puts

age = 26
puts age.respond_to?(:to_i)

20.times { print '-' }
puts

alphabet = ["a", "b", "c"]
alphabet << "d"
alphabet.each {|letter| puts letter}

caption = "A giraffe surrounded by "
caption << "weezards!"
puts caption

20.times { print '-' }
puts
