require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("michael", "the office", 40)
m2 = Manager.new("tim", "uk office", 50)

e1 = Employee.new("kevin", m1, 20000)
e2 = Employee.new("dwight", m1, 25000)
e3 = Employee.new("bob", m2, 19500)
# empl = Employee.new("kelly", m2, 10000)

binding.pry
puts "done"
