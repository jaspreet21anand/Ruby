require_relative '../lib/product'

product_array = []
i = -1
begin
  product_array[i+=1] = Product.new { |attr| print attr ; gets.chomp }
  print 'want to add more products? (y/n)'
  y_or_n = gets.chomp.downcase
end while y_or_n != 'n'

puts 'Name____Price____SalesTax____Import Duty____Total Price'
puts product_array
puts '%40s' %Product.grand_total.round
