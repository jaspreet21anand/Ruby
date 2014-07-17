require_relative '../lib/Scanwords.rb'

test = Scanwords.new("hello how hello hello hello are you? I am good and you?")

wordlist = test.scan_words_from_string

p wordlist

p test.count_words(wordlist)

