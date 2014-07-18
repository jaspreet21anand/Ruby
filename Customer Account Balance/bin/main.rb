require_relative '../lib/customer'

jaspreet = Customer.new('Jaspreet Singh')
lovish = Customer.new('Lovish Mehta')
sawan = Customer.new('Sawan Gupta')

[jaspreet, lovish, sawan].each{ |obj| puts "\n", obj }

lovish.deposit(1000)
sawan.withdraw(500)
jaspreet.deposit(100)

puts 'lovish.deposit(1000)'
puts 'sawan.withdraw(500)'
puts 'jaspreet.deposit(100)'

[jaspreet, lovish, sawan].each{ |obj| puts "\n", obj }

jaspreet.withdraw(700)
sawan.deposit(2000)

puts 'jaspreet.withdraw(700)'
puts 'sawan.deposit(2000)'

[jaspreet, lovish, sawan].each{ |obj| puts "\n", obj }
