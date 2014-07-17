class Scanwords
	
	def initialize(string)
		@check = string
	end

	def scan_words_from_string
		@check.downcase.scan(/[\w]+/)
	end

	def count_words(word_list)
		count = Hash.new(0)
		for word in word_list
			count[word] += 1
		end
  	count
	end

end
