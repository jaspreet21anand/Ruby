class Fixnum

  def self.fibonacci_upto_1000
    num, next_num = 1, 1
    
    while num  < 1000
      yield(num)
      num, next_num = next_num, num + next_num
    end

  end

end
