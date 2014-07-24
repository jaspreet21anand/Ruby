class String

  def highlight_regex_in_string(regex)
    count = 0
    string = gsub(/#{ Regexp.quote(regex) }/i) do |match|
      count += 1
      match = "(#{ match })"
    end
    string << "\nNo. of occurrences: #{ count }"
  end

end
