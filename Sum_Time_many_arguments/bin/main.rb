require_relative '../lib/time'

print 'Enter time1: '
time1 = Time.validate_time(gets)
print 'Enter time2: '
time2 = Time.validate_time(gets)
print 'Enter time3: '
time3 = Time.validate_time(gets)
puts time1.sum_time(time3, time2)
puts time1.sum_time
puts time1.sum_time(time3)
