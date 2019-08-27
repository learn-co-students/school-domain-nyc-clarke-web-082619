class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
       @roster 
    end

    def add_student(student, grade)
        if !roster[grade]
            roster[grade] = []
        end
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end
    

    def sort
        sorted = { }
        roster.each do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end
end
