class School
attr_reader :roster

  def initialize(school)
    @school = school 
    @roster = Hash.new{|h,k| h[k] = []}
  end

  def add_student(student_name, grade)
    @roster[grade] << student_name
  end

  def grade(current_grade)
    @roster[current_grade]
  end

  def sort
    sorted = {}
    @roster.each{|k,v| sorted[k] = v.sort}
    sorted 
  end
end