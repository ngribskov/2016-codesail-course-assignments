class Person
  attr_accessor :first_name, :last_name, :birthdate, :hair_color, :eye_color, :height

  def initialize(namefirst,namelast,birthdate,haircolor,eyecolor,height)
    @first_name = namefirst
    @last_name = namelast
    @birthdate = birthdate
    @hair_color = haircolor
    @eye_color = eyecolor
    @height = height
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

end

class Student < Person
  attr_accessor :school_name, :gpa, :courses

  def initialize(school_name, gpa, courses,namefirst,namelast,birthdate,haircolor,eyecolor,height)
    super(namefirst,namelast,birthdate,haircolor,eyecolor,height)
    @school_name = school_name
    @gpa = gpa
    @courses = courses
  end

  def sample_class
    if @courses.class != Array
      puts "Be sure to change this attribute to an array of courses"
    else
    @courses.shuffle.first
    end
  end
end

class Employee < Person
  attr_accessor :salary, :employer, :status, :position, :boss

  def initialize(salary, employer, status, position, boss, namefirst,namelast,birthdate,haircolor,eyecolor,height)
    super(namefirst,namelast,birthdate,haircolor,eyecolor,height)
    @salary = salary
    @employer = employer
    @status = status
    @position = position
    @boss = boss
  end

  def promotion
    if @boss == nil
      puts "PROMOTION!!"
    else
      puts "office drone"
    end
  end
end

class Teacher < Employee
  attr_accessor :class_size, :union_employee, :grade_level_taught
  def initialize(class_size, union_employee, grade_level_taught, salary, employer, status, position, boss, namefirst,namelast,birthdate,haircolor,eyecolor,height)
    super(salary, employer, status, position, boss, namefirst,namelast,birthdate,haircolor,eyecolor,height)
    @class_size = class_size
    @union_employee = union_employee
    @grade_level_taught = grade_level_taught
  end

  def size_check
    if @class_size > 25
      puts "This teacher needs fewer students. Hire more teachers"
    elsif @class_size < 10
      puts "There are too many teachers, fire some"
    else
      puts "Good student-teacher balance"
    end
  end
end
