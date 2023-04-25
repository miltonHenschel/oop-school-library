require './nameable'

class Decorator < Nameable
  def intialize(nameable)
    @nameable = nameable
  end
end