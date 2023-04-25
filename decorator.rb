require './nameable'

class Decorator < Nameable
  attr_accessor :nameable

  def intialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.upcase
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @nameable[0, 9]
  end
end
