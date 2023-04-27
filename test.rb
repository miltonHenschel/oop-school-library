require './classroom'
require './student'
require './decorator'

# TEST DECORATORS
# person = Person.new(22, 'maximilianus')
# puts person.correct_name
# capitalized_person = CapitalizeDecorator.new(person)
# puts capitalized_person.correct_name
# capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
# puts capitalized_trimmed_person.correct_name

# TEST RELATIONSHIP BETWEEN CLASSROOM & STUDENT
classroom1 = Classroom.new("Class 1")
student1 = Student.new(1, 30, classroom1, "Henschel")
puts student1.inspect
