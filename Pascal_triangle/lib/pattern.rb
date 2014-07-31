class Pattern

  def self.generate_pascal(up_limit)
    pascal_array = [[1]]
    (0..up_limit).each do |i|
      yield pascal_array[i]
      pascal_array[i + 1] = generate_next_line(pascal_array[i])
    end
  end

  def self.generate_next_line(previous_line)
    previous_line.each_with_index.inject([1]) do |ret, (value, index)|
      ret << value + previous_line[index += 1].to_i
    end
  end
  private_class_method :generate_next_line

end
