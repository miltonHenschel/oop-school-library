class App
  def initialize
    @book_list = []
    @person_list = []
  end

  def list_books(books)
    if books.empty?
      puts 'Oops, you have no book yet!\n'
    else
      books.each do |book|
        puts 'Title: #{book.title}\n'
        puts 'Author: #{book.author}\n'
        puts '-------------------------\n'
      end
    end
  end

  def list_persons
    if @person_list.length == 0
      puts 'Empty!\n'
    else
      @person_list.each{|index, content| puts '#{index} - #{content}'}
    end
  end

  def create_person(person)
    puts 'Press 1 to create a student or 2 to create a teacher: /n'
    option = gets.chomp
    if option = '1'
      create_student(person)
    elsif option = '2'
      create_teacher(person)
    end
  end

  def create_student(person)
    puts 'Enter name: \n'
    name = gets.chomp
    puts 'Enter age: \n'
    age = gets.chomp
    puts 'Enter classroom: \n'
    classroom = gets.chomp

    student = Student.new(name, age, parent_permission: true, classroom)
    person.push(student)
    puts 'You successfully added a student!\n'
  end

  def create_teacher(person)
    puts 'Enter name: \n'
    name = gets.chomp
    puts 'Enter age: \n'
    age = gets.chomp
    puts 'Enter specialization: \n'
    specialization = gets.chomp

    teacher = Teacher.new(name, age, parent_permission: true, specialization)
    person.push(teacher)
    puts 'You successfully added a teacher!\n'
  end

app = App.new
app.list_books
app.list_persons
end