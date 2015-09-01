fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

fibs.collect { |n| n + n }

def delimiter
  20.times { print '-' }
  puts
end

delimiter

def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

delimiter

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

delimiter

def double(number)
  yield(number)
end

puts double(15) {|number| number * 2}

delimiter

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

result = (1..100).to_a.select(&multiples_of_3)
puts result.join(' ')

delimiter

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new do |d|
  d.floor
end

ints = floats.collect(&round_down)
puts ints.join(' ')

delimiter

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

over_4_feet = Proc.new do |n|
  n >= 4
end

group_1.select(&over_4_feet)
group_2.select(&over_4_feet)
group_3.select(&over_4_feet)

delimiter

def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)

delimiter

hi = Proc.new { puts "Hello!" }

hi.call

delimiter

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

string_array = numbers_array.map(&:to_s)
puts string_array.join(' ')

delimiter

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

delimiter

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |s| s.to_sym }

symbols = strings.collect(&symbolize)
puts symbols.join(' ')

delimiter

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

delimiter

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbols_filter = lambda { |p| p.is_a? Symbol }

symbols = my_array.select(&symbols_filter)
symbols.each { |s| print s.to_s << ' ' }
puts

delimiter

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select {|n| n.is_a? Integer}
puts ints.join(' ')

delimiter

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new do |n|
  n < 100
end

youngsters = ages.select(&under_100)
puts youngsters.join(' ')

delimiter

crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
}

first_half = lambda { |_, value| value < 'M' }

crew.select(&first_half).each { |k,v| puts k.to_s << ' ' << v }