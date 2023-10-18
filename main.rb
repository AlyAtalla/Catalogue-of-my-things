require_relative './app'

def main_menu
  puts 'Please choose an option by entering a number:'
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

def options(app)
  option_actions = {
    1 => app.books.method(:list_all_books),
    2 => app.musics.method(:list_all_music_albums),
    3 => app.games.method(:list_all_games),
    5 => app.genres.method(:list_all_genre),
    6 => app.labels.method(:list_all_labels),
    7 => app.authors.method(:list_all_authors),
    9 => app.books.method(:add_book),
    10 => app.musics.method(:add_music_album),
    11 => app.games.method(:add_game_menu),
    13 => method(:exit_program)
  }

  input = gets.chomp.to_i
  action = option_actions[input]

  if action
    action.call
  else
    puts 'Invalid number, please try again!'
  end
end

def exit_program
  puts 'Thanks for using this App!! ✨'
end

def main
  running = true
  app = App.new
  app.obtain_data
  puts 'Welcome to our App! 🎉'

  while running
    main_menu
    options(app)
    break if input == 13
  end

  app.save_data
end

main
