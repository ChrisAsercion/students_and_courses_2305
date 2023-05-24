require 'rspec'
require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
  it 'exists' do
    gradebook = Gradebook.new("Mr. Monkey")
    expect(gradebook).to be_a(Gradebook)
  end

  it 'can add a course to an instructor courses' do
    gradebook = Gradebook.new("Mr. Monkey")
    course = Course.new("Calculus", 2)
    gradebook.add_course(course)
    expect(gradebook.courses).to eq([course])
  end

  it 'can check the students enrolled to a course' do
    gradebook = Gradebook.new("Mr. Monkey")
    course = Course.new("Calculus", 2)
    gradebook.add_course(course)
    student1 = Student.new({name: "Morgan", age: 21})
    course.enroll(student1)
    gradebook.list_all_students(course)
  end

  it 'can check if the students are passing' do
    gradebook = Gradebook.new("Mr. Monkey")
    course = Course.new("Calculus", 2)
    gradebook.add_course(course)
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    expect(gradebook.students_below(student.grade)).to be(false)
    student2 = Student.new({name: "Zoro", age: 23})
    student.log_score(50)
    student.log_score(70)
    expect(gradebook.students_below(student2.grade)).to be(true)
  end
end