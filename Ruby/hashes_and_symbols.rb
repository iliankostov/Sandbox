matz = { "First name" => "Yukihiro",
         "Last name" => "Matsumoto",
         "Age" => 47,
         "Nationality" => "Japanese",
         "Nickname" => "Matz"
}

matz.each {|key, value| puts value}

puts "-------------------"

creatures = { "weasels" => 0,
              "puppies" => 6,
              "platypuses" => 3,
              "canaries" => 1,
              "Heffalumps" => 7,
              "Tiggers" => 1
}

puts creatures["a"]

puts "-------------------"

no_nil_hash = Hash.new("ilian")
no_nil_hash["a"]

puts "-------------------"

menagerie = { :foxes => 2,
              :giraffe => 1,
              :weezards => 17,
              :elves => 1,
              :canaries => 4,
              :ham => 1
}

puts "-------------------"

puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

puts "-------------------"

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []
strings.each {|s| symbols.push(s.intern) }

puts "-------------------"

movies = {
    mission_imposible: "Tom Cruise",
    transporter: "Jason Statham"
}

puts "-------------------"

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

puts "-------------------"

movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}

puts movie_ratings.select {|name, rating| name == :memento}
puts movie_ratings.select {|name, rating| rating >= 4}

puts "-------------------"

movie_ratings.each_key {|key| puts key, ' '}


