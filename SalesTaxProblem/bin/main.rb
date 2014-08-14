require_relative '../lib/cart'

my_cart = Cart.new('Jaspreet')

begin
  my_cart.add_product
  print "want to add more products? #{ Product::YES_OR_NO.values.join('/') }"
end while Product::YES_OR_NO.key(gets.chomp)

my_cart.print_bill
