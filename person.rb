class Person
  def intialize(id, name = "Unknown", age, parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name
  attr_accessor :age

  def can_use_services?
    of_age? || parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
