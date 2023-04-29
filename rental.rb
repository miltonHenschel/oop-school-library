class Rental
  attr_accessor :date, :person, :book

  def initialize(person, book, date = Time.now)
    @date = date
    @person = person
    person.rentals << self
    @book = book
    book.rentals << self
  end
end
