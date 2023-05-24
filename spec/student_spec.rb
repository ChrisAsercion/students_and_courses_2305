require 'rspec'
require './lib/student'

RSpec.describe Student do
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21})
    expect(student).to be_a(Student)
    expect(student.scores).to eq([])
  end
  it 'can log test scores' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    expect(student.scores).to eq([89, 78])
  end
  it 'can grade scores'
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    expect(student.grade).to eq(83.5)
end 