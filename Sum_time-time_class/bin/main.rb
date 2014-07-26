require_relative '../lib/time'

print 'Enter time1: '
time1 = Time.validate_time(gets)
print 'Enter time2: '
time2 = Time.validate_time(gets)

puts time1.sum_time(time2)
