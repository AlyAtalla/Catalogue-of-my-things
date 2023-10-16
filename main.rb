def main_menu
  puts 'Main Menu'
  puts '1) List all Books'
  puts '2) List all Music Albums'
  puts '3) List all Games'
  puts '4) List all Movies'
  puts '5) List all Genres'
  puts '6) List all Labels'
  puts '7) List all Authors'
  puts '8) List all Sources'
  puts '9) Add a Book'
  puts '10) Add a Music Album'
  puts '11) Add a Game'
  puts '12) Add a Movie'
  puts '13) Exit the program'
end

def list_all_books
  # Implement the logic to list all books
  puts 'Listing all books...'
end

def list_all_music_albums
  # Implement the logic to list all music albums
  puts 'Listing all music albums...'
end

# Define methods for other menu options

def exit_program
  # Implement any cleanup or exit logic here
  puts 'Exiting the program.'
end

def main
  running = true

  while running
    main_menu
    input = gets.to_i

    case input
    when 1
      list_all_books
    when 2
      list_all_music_albums
    when 3
      # Handle other menu options in a similar way
    when 13
      exit_program
      running = false
    else
      puts 'Invalid option. Please select a valid option.'
    end
  end
end

main
