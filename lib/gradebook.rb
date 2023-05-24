class Gradebook
  attr_reader :instructor, :courses
  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @instructor_load = {}
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students(course)
    @instructor_load[:course] = course.name
    require 'pry'; binding.pry
    #I got stuck trying to assign the value to course.student
    #right now, the key of the hash "instructor_load" is the course.name ("Calculus")
  end

  def students_below(threshold)
    if threshold >= 70
      false
    else
      true
    end
  end

end


# def list_all_students(course)
#   course.find_all do |student|
#     student = @students
#   end
#   require 'pry'; binding.pry
#   #this find_all method was coming as undefined. 
#   #the thought process behind this method was to find_all @students
#   #then shovel all @students into an array and display that array