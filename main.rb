require './app'

class Main
  app = App.new

  def initialize
    @book_list = []
    @person_list = []
    @rental_list = []
  end

  def choice
    puts '\nWelcome to the School Library!\n\n'
    puts '
    1 > List all books
    2 > List all persons
    3 > Add a person
    4 > Add a book
    5 > Add a rental
    6 > List all rentals
    '
    puts 'Please kindly choose a number: \n'
    choice = gets.chomp
  end

  def display(choice)
    case choice
    when '1'
      list_books(@book_list)
      choice
    when '2'
      list_persons(@person_list)
      choice
    when '3'
      add_persons(@person_list)
      choice
    when '4'
      add_books(@book_list)
      choice
    when '5'
      add_rentals(@person_list, @book_list, @rental_list)
      choice
    end
    when '6'
      list_rentals(@person_list, @rental_list)
      choice
    end
  end
end

main = Main.new
main.choice