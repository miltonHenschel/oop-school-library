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

def main
  puts 'Welcome to the School Library!'
  choice = 0
  app = App.new
  menu
  while choice = gets.to_i
    case choice
    when 1
      app.list_books
      menu
    when 2
      app.list_persons
      menu
    when 3
      app.add_persons
      menu
    when 4
      app.add_books
      menu
    when 5
      app.add_rentals
      menu
    when 6
      app.list_rentals
      menu
    when 7
      puts 'Hope you enjoyed using this app. Good bye!'
      exit
    end
  end
end

main
