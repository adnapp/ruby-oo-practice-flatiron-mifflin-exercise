class Manager
    attr_accessor :name, :department, :age

   @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, self, salary)
    end

    def self.all_departments
        self.all.map {|i| i.department}
    end

    def self.average_age
        ages = self.all.map {|a| a.age}
        ages.sum(0.0)/ ages.size
    end

    def self.all
        @@all
    end
end
