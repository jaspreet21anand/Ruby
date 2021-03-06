class Series

  def self.fibonacci_series(upper_limit)
    num, next_num = 1, 1

    while num  < upper_limit
      yield(num)
      num, next_num = next_num, num + next_num
    end

  end

end
