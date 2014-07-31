require_relative '../lib/time'
require 'time'

print 'Enter time1: '
while !Time.validate?(time = gets.chomp)
  print "Invalid time! Please enter a valid time: "
end
time1 = Time.parse(time)

print 'Enter time2: '
while !Time.validate?(time = gets.chomp)
  print "Invalid time! Please enter a valid time: "
end
time2 = Time.parse(time)

print 'Enter time3: '
while !Time.validate?(time = gets.chomp)
  print "Invalid time! Please enter a valid time: "
end
time3 = Time.parse(time)

print 'Enter time4: '
while !Time.validate?(time = gets.chomp)
  print "Invalid time! Please enter a valid time: "
end
time4 = Time.parse(time)

puts time1.sum(time4, time3, time2)
puts time1.sum(time2)
puts time1.sum(time3, time2)
