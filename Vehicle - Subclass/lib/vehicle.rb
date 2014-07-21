class Vehicle
  
  attr_accessor :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "Name: #{ @name }\nPrice: #{ @price }" 
  end
    
end

class Bike < Vehicle

  def initialize(name, price, dealer)
    @dealer = dealer
    super(name, price)
  end

  def to_s
    super + "\nDealer: #{ @dealer }"
  end

end
