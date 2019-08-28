require 'pry'

class School 

attr_reader :school, :roster 
    def initialize(school)
        @school = school
        @roster = {} 
    end 

    def add_student(name, grade)       
        roster[grade] ? roster[grade] << name : roster[grade] = [name]
    end

    def grade(grade)
        @roster.map do |key, value| 
            if key == grade 
                return value 
            end
        end
    end

    def sort
        new_hash = {}
        @roster.each do |key, value| 
            new_hash[key] = value.sort 
        end 
        new_hash
    end 
end 

