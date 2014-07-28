class Pattern

  def self.generate_pascal(up_limit)
    pascal_hash = { 0 => [1] }
    for i in 0..up_limit
      yield pascal_hash[i]
      pascal_hash[i + 1] = generate_next_line(pascal_hash[i])
    end
  end

  def self.generate_next_line(previous_line)
    i = 0
    previous_line.inject([1]) { |ret, value| ret << value + previous_line[i += 1].to_i }
  end
  private_class_method :generate_next_line

end
