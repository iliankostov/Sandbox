movies = {
    Transporter: 2,
    Mission_Impossible: 3,
    A_Knights_Tale: 4
}

puts 'What would you like to do?'
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

def get_title
  print 'Please type a title: '
  gets.chomp.to_sym
end

def get_rating
  print 'Please type a rating from 0 to 4: '
  gets.chomp.to_i
end

exists_error = 'The movie already exists'
missing_error = 'The movie is missing'

choice = gets.chomp.downcase
case choice
  when 'add'
    title = get_title
    if movies[title.to_sym].nil?
      rating = get_rating
      movies[title] = rating
      puts "The movie #{title} was added successfully with rating #{rating}."
    else
      puts exists_error
    end
  when 'update'
    title = get_title
    if movies[title].nil?
      puts missing_error
    else
      new_rating = get_rating
      movies[title] = new_rating
      puts "The movie #{title} was updated successfully with rating #{new_rating}."
    end
  when 'display'
    movies.each {|title, rating| puts "#{title.to_s}: #{rating}" }
  when 'delete'
    title = get_title
    if movies[title].nil?
      puts missing_error
    else
      movies.delete(title)
      puts "The movie #{title} was deleted successfully."
    end
  else
    puts 'Error!'
end