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

app = App.new
app.list_books
app.list_persons
end