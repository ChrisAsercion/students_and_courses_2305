class Course
  attr_reader :name, :capacity, :students, :full
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end
  def full?
    if @students.length == 2
      @full = true
    else
      false
    end
  end

  def enroll(student)
    @students << student

  end
end
