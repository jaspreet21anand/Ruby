class Interest
  RATE = 0.10

  attr_accessor :principle, :time

  def initialize
    temp_var = yield
    raise "Expected two arguments in array { [<principle> <time>] }" if temp_var.length != 2
    @principle, @time = temp_var
  end

  def calculate_SI
    principle * RATE * time
  end

  def calculate_CI
    principle * (((1 + RATE) ** time) - 1)
  end

  def calculate_difference_in_CI_SI
    calculate_CI - calculate_SI
  end

end
