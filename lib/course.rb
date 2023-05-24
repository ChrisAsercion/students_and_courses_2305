class Course
  attr_reader :name, :capacity, :students, :full
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end
  def full?
    @full = false
  end
end
