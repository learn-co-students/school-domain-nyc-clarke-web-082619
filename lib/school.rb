class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each{|key, value| @roster[key] = value.sort}
    end
end