require './app'

def menu
  puts '
  1 > List all books
  2 > List all persons
  3 > Add a person
  4 > Add a book
  5 > Add a rental
  6 > List all rentals
  7 > Exit
  '
  puts 'Please kindly choose a number: '
end

ACTIONS = {
  1 => :list_books,
  2 => :list_persons,
  3 => :add_persons,
  4 => :add_books,
  5 => :add_rentals,
  6 => :list_rentals
}.freeze

def main
  puts 'Welcome to the School Library!'
  menu
  app = App.new
  while (choice = gets.to_i)
    if choice == 7
      puts 'Hope you enjoyed using this app. Good bye!'
      exit
    end
    method_name = ACTIONS[choice]
    if method_name.nil?
      puts 'Incorrect! Must be between 1-7. Please try again...'
    else
      method_tocall = app.method(method_name)
      method_tocall.call
    end
    menu
  end
end

main
