# Initialize an empty hash to store the movies and their ratings
$movies = {
  End_game: 2,
  Eragon: 6, 
  King_kong: 3,
}

# Create a method to add a movie and its rating to the hash
def add_movie(title, rate)
  puts "What movie do you want to add?"
  title = gets.chomp.to_sy
  if movies[title].nil?
	puts "Movie already exists, would you like to:"
	puts "1. Update the rating"
	puts "2. Delete the movie"
	puts "3. Display the movie"
	puts "enter a number pls..."
	choice = gets.chomp.to_i
	# selon le choix application d'un truc
	case choice
	when 1
		puts "What's the new rating? (Type a number 0 to 6.)"
		rate = gets.chomp
		while rate.between?(1, 6)
			if rate == 0 
				puts "Enter a number pls not strings..."
			else
				puts "Enter a number pls... 1,2 or 3"
			end
			rate = gets.chomp.to_i
		end
		movies[title.to_sym] = rate.to_i
		puts "#{title} has been updated with new rating of #{rate}."
		display_movies()  # test 1 voir si la note est maj ? 
	when 2
		delete_movie(title)
		puts "Movie deleted successfully!"
		display_movies() # test 2 est ce que le film n'est plus dans la liste ? 
	when 3
	  display_movies(title) # test 3 affiche le film et sa note
	else
		while choice.between?(1, 3)
			if choice == 0 
				puts "Enter a number pls, not strings...👉"
			else
				puts "Enter a number pls... 1,2 or 3"
			end
			choice = gets.chomp.to_i   #test 4 tant que l'user ne saisie pas un chiffre entre 
		end
	end
  else
	puts "What's the rating? (Type a number 0 to 6.)"
	rate = gets.chomp
	while rate.between?(1, 6)   #test 5 tant que user n'entre pas une rate valid 
		if rate == 0 
		  puts "Enter a number pls not strings..."
		else
		  puts "Enter a number pls... 1,2 or 3"
		end
		rate = gets.chomp.to_i
	end
	movies[title.to_sym] = rate.to_i
	puts "#{title} has been added with a rating of #{$rate}."
	display_movies() # test 6 afficher nouveau film avec sa note et les autres
  end
end

# Create a method to update a movie's rating
def update_rating(title, rate)
	puts "What movie do you want to update?"
	title = gets.chomp
	while movies[title.to_sym].nil?
		puts "Movie not found!, re-enter the title look-at this list:"
		display_movies()
		title = gets.chomp
	end
	puts "What's the new rating? (Type a number 0 to 6.)"
	rate = gets.chomp
	while rate.between?(1, 6)
		if rate == 0 
			puts "Enter a number pls not strings..."
		else
			puts "Enter a number pls... 1,2, 4, 5 or 6"
		end
		rate = gets.chomp.to_i
	end
	movies[title.to_sym] = rate.to_i
	puts "#{title} has been updated with new rating of #{rate}."
	end
end

# Create a method to display all movies and their ratings
def display_movies(title, rate)
  movies.each do |title, rate|
  	puts "#{title}: #{rate}"
  end
end

# Create a method to delete a movie from the hash
def delete_movie(title)
  if $movies.has_key?(title)
  	$movies.delete(title.to_sym)
  else
  	puts "Error: movie not found"
  end
end

# Create a menu to interact with the CRUD operations
def menu
  puts "Welcome to the Movie Database"
  puts "Please select an option:"
  puts "1. Add a movie"
  puts "2. Update a movie rating"
  puts "3. Display all movies"
  puts "4. Delete a movie"
  puts "5. Exit"

  choice = gets.chomp.to_i

  case choice
  when 1
	add_movie()
  when 2
	update_rating(title, rate)
  when 3
	display_movies()
  when 4
	puts "What is the name of the movie?"
	name = gets.chomp
	delete_movie(name)
	puts "Movie deleted successfully!"
  when 5
	exit
  else
	puts "Invalid choice, please try again."
	while choice.between?(1, 6)
		if choice == 0 
		puts "Enter a number pls not strings..."
		else
		puts "Enter a number pls... 1,2 or 3"
		end
		choice = gets.chomp.to_i
	end
  end
end

# Run the menu
while true do
  menu()
end
