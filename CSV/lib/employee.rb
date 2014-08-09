class Employee

  attr_reader :designation
  def initialize(emp_id, name, designation)
    @employee_id = emp_id
    @name = name
    @designation = designation
  end

  def to_s
    "#{ @name }(EmpID:#{ @employee_id })"
  end

end