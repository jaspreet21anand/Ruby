class Fixnum

  def self.fibonaccing_upto
    num, next_num = 1, 1
    yield( "#{num} #{next_num}" )

    while num + next_num < 1000
      num, next_num = next_num, num + next_num
      yield(next_num)
    end

  end

end
