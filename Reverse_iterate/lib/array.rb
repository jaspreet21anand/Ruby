class Array

  def reverse_iterate(&block)
    for i in 1..length
      block.call(self[-i])
    end
  end

end