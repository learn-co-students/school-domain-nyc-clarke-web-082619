require "pry"
class School
    attr_reader :roster, :name
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ? roster[grade] << student : roster[grade] = [student]
    end 

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.reduce({}) do |memo, (grade, students)| 
            memo[grade] = roster[grade].sort
            memo
        end
    end
   
end