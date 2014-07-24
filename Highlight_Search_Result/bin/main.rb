require_relative '../lib/string'

print 'Enter the string: '
string = gets.chomp
print 'Enter the word to be highlighted: '
regex = gets.chomp
puts string.highlight_regex_in_string(regex)
