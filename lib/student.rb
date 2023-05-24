class Student
  attr_reader :name, :age, :info, :scores, :total
    def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @scores = []
    end

    def log_score(score)
      @scores << score
    end
    def grade
      sum = 0
      @scores.each do |grade|
        sum += grade
      end
      sum.fdiv(2)
    end
end
