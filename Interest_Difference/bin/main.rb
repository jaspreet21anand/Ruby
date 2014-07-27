require_relative '../lib/interest'

a = Interest.new do |variable|
print "Enter value for #{ variable }: "
gets
end

difference, ci, si = a.difference_in_CI_and_SI
puts "CI = #{ format("%.2f",ci) }\n\ SI = #{ si.round(2) }\n\ Difference = #{ difference.round(2) }"
