require_relative '../lib/series'

Series.fibonacci_series(1000) { |next_num| print "#{ next_num } " }
