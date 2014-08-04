require_relative '../lib/interest'

print 'Enter the principle'
principle = gets.to_i
print 'Enter the time'
time = gets.to_i

a = Interest.new { principle, time }
puts "CI = #{ format("%.2f", a.calculate_CI) }\nSI = #{ a.calculate_SI.round(2) }\nDifference = #{ a.calculate_difference_in_CI_SI.round(2) }"
