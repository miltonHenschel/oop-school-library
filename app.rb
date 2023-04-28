class App
  def initialize
    @book_list = []
  end

  def list_books
    if @book_list.length == 0
      puts "You have no books."
    else
      @book_list.each{|index, content| puts '#{index} - #{content}'}
    end
  end

app = App.new
app.list_books
end