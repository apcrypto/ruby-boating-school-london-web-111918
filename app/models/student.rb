require 'pry'

class Student

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    new_boating_test = BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(name)
      puts self.all.find {|student| student.name == name}
  end

  def grade_percentage
    passed_tests = 0
    total_tests = 0
    BoatingTest.all.each do |test|
      if test.student.name == self.name
        total_tests += 1
      end
      if test.student.name == self.name && test.status == "passed"
        passed_tests += 1
      end
    end
    (passed_tests.to_f / total_tests.to_f) * 100.00
  end

end
