class TextTreeParser

  def initialize(text_tree)
    @text_tree = text_tree
  end

  def employees_supervisors
    employees_level = {}
    employees_supervisors = {}

    raw_employees = @text_tree.split("\n")
    raw_employees.each do |employee|
      employees_level[employee.lstrip] = employee.length - employee.lstrip.length
    end

    employees = @text_tree.split("\n").each { |employee| employee.lstrip! }
    employees_level.each_with_index do |employee_level, i|
      employee = employee_level[0]
      level = employee_level[1]
      if level == 0
        employees_supervisors[employee] = nil
      else
        iterator = i
        while iterator > 0
          iterator -=1
          above_employee = employees[iterator]
          if employees_level[employee] > employees_level[above_employee]
            employees_supervisors[employee] = above_employee
            break
          end
        end
      end
    end
    employees_supervisors
  end

end
