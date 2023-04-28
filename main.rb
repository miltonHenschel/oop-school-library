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
    7 > Exit
    '
    puts 'Please kindly choose a number: \n'
    choice = gets.chomp
  end
end

Main()