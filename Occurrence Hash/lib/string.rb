class String

  def count_alpha
    count = Hash.new(0)
    scan(/[\w]/).each{ |alpha| count[alpha] += 1 }
    count
  end

end
