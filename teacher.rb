require './Person'

class Teacher < Person
  attr_reader :specialization

  def initialize(_id, age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def specialization=(specialization)
    specialization.teachers.push(self) unless specialization.teachers.include?(self)
  end
end
