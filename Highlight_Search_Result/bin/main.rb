require_relative '../lib/string'

print 'Enter the string: '
string = gets.chomp
print 'Enter the word to be highlighted: '
word = gets.chomp
puts string.search_and_highlight(word)

