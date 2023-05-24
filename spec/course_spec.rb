require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
  it 'exists' do
    course = Course.new("Calculus", 2)
    expect(course).to be_a(Course)
    expect(course.students).to eq([])
    expect(course.full?).to eq(false)
  end

  it 'can enroll students in the course'

end