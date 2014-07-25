class String

  def search_and_highlight(word)
    count = 0
    string = gsub(/#{ Regexp.quote(word) }/i) do |match|
      count += 1
      match = "(#{ match })"
    end
    string << "\nNo. of occurrences: #{ count }"
  end

end

