# code here!
class School

    def initialize (name)
        @name = name
        @roster = {}
    end

    def roster 
        @roster
    end

    def add_student(student_name, grade)
        if roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade) 
        @roster[grade]
    end

    def sort
        hash = {}
        @roster = @roster.each {|key,value| hash[key] = value.sort}
        @roster = hash        
    end
end