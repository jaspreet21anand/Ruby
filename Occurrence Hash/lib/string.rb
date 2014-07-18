class String

  def hash_characters
    count = Hash.new(0)
    each_char{ |alpha| count[alpha] += 1 }
    count
  end

end
