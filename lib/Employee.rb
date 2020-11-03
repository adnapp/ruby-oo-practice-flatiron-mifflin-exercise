require 'pry'
class Employee
    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, manager, salary)
        @name = name
        @manager = manager
        @salary = salary
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(minimum)
        self.all.select {|emp| emp.salary > minimum}
    end

    def self.find_by_department(dept_name)
        self.all.find do |emp| 
            emp.manager.department == dept_name
        end
    end

    def tax_bracket
        # binding.pry
        self.class.all.select {|emp| emp.salary.between?(self.salary-1000,self.salary+1000)}
    end

    def self.all
        @@all
    end
end
