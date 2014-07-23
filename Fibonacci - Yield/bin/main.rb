require_relative '../lib/fixnum'

Fixnum.fibonacci_upto_1000 { |next_num| print " #{ next_num }" }