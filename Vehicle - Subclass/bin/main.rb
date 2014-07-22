require_relative '../lib/bike'

pulsar = Bike.new("pulsar 150", 50000, "jerry")

puts pulsar

pulsar.price = 45000

puts pulsar
