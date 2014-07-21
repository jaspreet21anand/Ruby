class String

  def to_character_hash
    count = Hash.new(0)
    each_char{ |alpha| count[alpha] += 1 }
    count
  end

end
