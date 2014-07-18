require_relative '../lib/string'

begin
  print "Enter the string: "
  to_check = gets.chomp
  puts (to_check.palindrome? ? "palindrome" : "not a palindrome")
end until to_check.downcase.eql?('q')
