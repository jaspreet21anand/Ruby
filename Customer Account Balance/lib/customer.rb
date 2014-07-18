class Customer
  
  @@class_instance_no = 0

  attr_reader :balance, :acc_no
  attr_accessor :name

  def initialize(name)
    @name = name
    @balance = 1000
    @acc_no = (@@class_instance_no += 1)
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
    end
  end

  def to_s
    "Name: #{@name} Account no: #{@acc_no} Balance: #{@balance}"
  end

end