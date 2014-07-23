class Customer
  
  @@no_of_customers = 0
  attr_reader :balance, :accout_no
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @account_no = (@@no_of_customers += 1)
  end

  def deposit(amount)
    if amount <= 0 
      erroneous_input_message
    else 
      @balance += amount
    end
  end

  def withdraw(amount)
    if amount <= 0
      erroneous_input_message
    elsif @balance <= amount
      puts "Insufficient Balance in #{ @name }'s account"
    else
      @balance -= amount
    end
  end

  def to_s
    "Name: #{ @name } Account no: #{ @account_no } Balance: #{ @balance }"
  end

  def erroneous_input_message
    puts "----error----Please enter a positive amount for #{ @name }'s transaction"
  end
  private :erroneous_input_message
end
