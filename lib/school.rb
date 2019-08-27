# code here!
class School
    def initialize (name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(stu_name, grade)
        @roster[grade] ||= []
        @roster[grade] << stu_name
    end

    def grade (curGrade)
        @roster[curGrade]
    end

    def sort 
        sorted = {}
        @roster.each do |grades, names|
            sorted[grades] = names.sort
        end
        sorted

    end




end