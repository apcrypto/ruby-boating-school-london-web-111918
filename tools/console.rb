require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "pending", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 202", "pending", krabs)

puts patrick.grade_percentage
puts Student.find_student("Spongebob")

puts puff.pass_student("Spongebob", "Don't Crash 101")
puts krabs.pass_student("Patrick", "Pirate Lessons")

puts puff.fail_student("Patrick", "Power Steering 202")
puts krabs.fail_student("Spongebob", "Sailing Class")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
