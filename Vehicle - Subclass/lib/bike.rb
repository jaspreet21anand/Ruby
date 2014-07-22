require_relative 'vehicle'

class Bike < Vehicle

  def initialize(name, price, dealer)
    @dealer = dealer
    super(name, price)
  end

  def to_s
    "#{ super }\nDealer: #{ @dealer }"
  end

end
