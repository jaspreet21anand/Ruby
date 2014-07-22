require_relative '../lib/array'

a = ['hello', 'abc', 125, 1982, 'a', 22, '2255669', 'hhhhh', 'b', 34, [1,2,3,4,5], { a: 1, b: 2 }]

puts a.hash_by_length
