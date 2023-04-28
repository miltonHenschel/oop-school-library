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

  def person_choice
    puts '
    1 > Add a student
    2 > Add a teacher
    '
    puts 'Please kindly choose a number: \n'
    person_choice = gets.chomp
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
      add_person()
      choice
    when '4'
      add_books()
      choice
    when '5'
      add_rentals()
      choice
    end
    when '6'
      list_rentals()
      choice
    end
  end

  def display_person(person_choice)
    case person_choice
    when '1'
      add_student()
      person_choice
    when '2'
      add_teacher()
      person_choice
    end
  end
end

main = Main.new
main.choice