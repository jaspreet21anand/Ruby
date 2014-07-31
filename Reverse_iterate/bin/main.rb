require_relative '../lib/array'

array = [4, 5, 8, 9, 7]
array.reverse_iterate { |i| print "#{ i } "}
