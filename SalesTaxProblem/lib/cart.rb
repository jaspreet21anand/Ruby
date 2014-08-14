require_relative '../lib/product'

class Cart

  attr_accessor :customer_name, :item_list
  def initialize(customer_name)
    @customer_name = customer_name
    @item_list = []
  end

  def add_product
    item_list << Product.new { |attr| print attr ; gets.chomp }
  end

  def print_bill
    grand_total = 0
    item_list.each { |product| grand_total += product.total_price }
    puts 'Name____Price____SalesTax____Import Duty____Total Price'
    puts item_list
    puts '%45s' %grand_total.round
  end


end
