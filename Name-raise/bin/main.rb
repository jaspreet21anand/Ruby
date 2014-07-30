require_relative '../lib/name.rb'

begin
  full_name = Name.new('+Jaspreet', 'Singh')
rescue FirstCharNotCapitalError => error
  puts error.message
rescue BlankStringError => error
  puts error.message
else
  puts full_name.first_name
  puts full_name.last_name
end
