require_relative '../lib/cart'

true_array = ['y', 'yes', 'Y', 'YES', 'Yes', '1']

my_cart = Cart.new('Jaspreet')

begin
  my_cart.add_product
  print 'want to add more products? (y/n)'
  y_or_n = gets.chomp
end while true_array.include?(y_or_n)

my_cart.print_bill
