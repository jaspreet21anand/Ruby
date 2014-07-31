class Array

  def reverse_iterate
    reverse_array = []
    for i in 1..length
      reverse_array[i-1] = self[-i]
      yield (self[-i]) if block_given?
    end
    reverse_array.to_enum
  end

end
