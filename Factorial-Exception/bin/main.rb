require_relative '../lib/integer'

print 'Enter number: '
number = gets

begin
  puts number.to_i.factorial
rescue NegativeInputError => error
  puts error.message
  puts 'resolving error by taking absolute value of input'
  puts number.to_i.abs.factorial
end
