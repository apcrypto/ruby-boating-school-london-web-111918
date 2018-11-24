require 'pry'

class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, boating_test)
    BoatingTest.all.find do |test|
      if test.student.name == student && test.name == boating_test
        test.status = "passed"
        return test
      end
    end
    BoatingTest.new(student, boating_test, "passed", self)
  end

  def fail_student(student, boating_test)
    BoatingTest.all.find do |test|
      if test.student.name == student && test.name == boating_test
        test.status = "failed"
        return test
      end
    end
    BoatingTest.new(student, boating_test, "failed", self)
  end

end
