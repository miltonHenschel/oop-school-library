class App
  def initialize
    @book_list = []
    @person_list = []
  end

  def list_books
    if @book_list.length == 0
      puts "Empty!"
    else
      @book_list.each{|index, content| puts '#{index} - #{content}'}
    end
  end

  def list_persons
    if @person_list.length == 0
      puts "Empty!"
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

app = App.new
app.list_books
app.list_persons
end