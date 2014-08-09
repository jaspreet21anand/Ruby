require_relative '../lib/product'
require_relative '../lib/cart'
my_cart = Cart.new('Jaspreet')
i = -1
begin
  my_cart.item_list << Product.new { |attr| print attr ; gets.chomp }
  print 'want to add more products? (y/n)'
  y_or_n = gets.chomp.downcase
end while y_or_n != 'n'

puts 'Name____Price____SalesTax____Import Duty____Total Price'
puts my_cart.item_list
puts '%45s' %my_cart.grand_total.round
