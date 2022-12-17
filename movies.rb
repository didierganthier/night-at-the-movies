movies = {
  "Inception": 4
}
puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
  when "add"
    puts "What's the title of the movie?"
    title = gets.chomp
    puts "What's the rating of the movie?"
    rating = gets.chomp
    if movies[title.to_sym] == nil
      movies[title.to_sym] = rating.to_i
      puts "#{title} was added with a rating of #{rating}"
    else
      puts "The movie is already there"
    end
  when "update"
    puts "What's the title of the movie you want to update?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "There is no records to update"
    else
      puts "What's the rating of the movie?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} was updated with a rating of #{rating}"
    end
  when "display"
    movies.each do |movie,rating|
      puts "#{movie}: #{rating}"
    end
  when "delete"
    puts "What's the title of the movie you want to delete?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "You can delete what doesn't exist"
    else
      movies.delete(title.to_sym)
      puts "#{title} was deleted"
    end
  else
    puts "Error!"
end
