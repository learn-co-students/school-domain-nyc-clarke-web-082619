# code here!

require "pry"

class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name 
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end 
  #  binding.pry

    def sort
        @roster.each do | key, value |
            value.sort!
        end
    end
end

