require './book'
require './classroom'
require './person'
require './rental'
require './student'
require './teacher'

class App
  attr_accessor :people, :books, :rentals

  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def list_books
    if @books.empty?
      puts 'Oops, you have no book yet!'
    else
      @books.each { |book| puts "[Book] Title: #{book.title}, Author: #{book.author}" }
    end
  end

  def list_persons
    if @persons.empty?
      puts 'Oops, you have no person added yet!'
    else
      @persons.each do |person|
        if person.is_a? Student
          print "[Student] Name: #{person.name}, ID: #{person.id} "
          print "Age: #{person.age}, Classroom: #{person.classroom}\n"
        elsif person.is_a? Teacher
          print "[Teacher] Name: #{person.name}, ID: #{person.id} "
          print "Age: #{person.age}, Specialization: #{person.specialization}\n"
        end
      end
    end
  end

  def list_rentals
    if @rentals.empty?
      puts 'Oops, you have taken no rents yet.'
    else
      @rentals.each do |rental|
        if rental.person.is_a? Student
          print "[Rental] Date: #{rental.date}, Title: #{rental.book.title}, Author: #{rental.book.author} "
          print "[Student] Name: #{rental.person.name}, ID: #{rental.person.id} "
          print "Age: #{rental.person.age}, Classroom: #{rental.person.classroom}\n"
        elsif rental.person.is_a? Teacher
          print "[Rental] Date: #{rental.date}, Title: #{rental.book.title}, Author: #{rental.book.author} "
          print "[Teacher] Name: #{rental.person.name}, ID: #{rental.person.id} "
          print "Age: #{rental.person.age}, Specialization: #{rental.person.specialization}\n"
        end
      end
    end
  end

  def add_persons
    puts 'Press 1 to add a student or 2 to add a teacher: '
    option = gets.chomp
    case option
    when '1'
      add_students
    when '2'
      add_teachers
    end
  end

  def add_students
    id = Random.rand(1..1000)
    puts 'Enter name: '
    name = gets.chomp
    puts 'Enter age: '
    age = gets.chomp
    puts 'Enter classroom: '
    classroom = gets.chomp

    student = Student.new(id, age, classroom, name, parent_permission: true)
    @persons.push(student)
    puts 'You successfully added a student!'
  end

  def add_teachers
    id = Random.rand(1..1000)
    puts 'Enter name: '
    name = gets.chomp
    puts 'Enter age: '
    age = gets.chomp
    puts 'Enter specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(id, age, specialization, name, parent_permission: true)
    @persons.push(teacher)
    puts 'You successfully added a teacher!'
  end

  def add_books
    puts 'Enter title: '
    title = gets.chomp
    puts 'Enter author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books.push(book)
    puts 'You successfully added a teacher!'
  end

  def add_rentals
    puts 'Enter the ID of the book you want to rent: '
    @books.each_with_index { |book, index| puts "#{index} - Title: #{book.title}, Author: #{book.author}" }
    book_index = gets.chomp.to_i

    puts 'Enter the ID of the person who wants to rent the book: '
    @persons.each_with_index do |person, index|
      if person.is_a? Student
        print "#{index} - [Student] Name: #{person.name}, ID: #{person.id} "
        print "Age: #{person.age}, Classroom: #{person.classroom}\n"
      elsif person.is_a? Teacher
        print "#{index} - [Teacher] Name: #{person.name}, ID: #{person.id} "
        print "Age: #{person.age}, Specialization: #{person.specialization}\n"
      end
    end
    person_index = gets.chomp.to_i

    rental = Rental.new(@persons[person_index], @books[book_index])
    @rentals.push(rental)
    puts 'You successfully added a rental!'
  end
end
