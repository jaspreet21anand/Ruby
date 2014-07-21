require_relative '../lib/customer'

jaspreet = Customer.new('Jaspreet Singh')
lovish = Customer.new('Lovish Mehta')
sawan = Customer.new('Sawan Gupta')

[jaspreet, lovish, sawan].each{ |obj| puts "\n", obj }

puts 'lovish.deposit(1000)'
puts 'sawan.withdraw(2500)'
puts 'jaspreet.deposit(-100)'

lovish.deposit(1000)
sawan.withdraw(2500)
jaspreet.deposit(-100)

[jaspreet, lovish, sawan].each{ |obj| puts "\n", obj }

puts 'jaspreet.withdraw(700)'
puts 'sawan.deposit(2000)'

jaspreet.withdraw(700)
sawan.deposit(2000)

[jaspreet, lovish, sawan].each{ |obj| puts "\n", obj }
