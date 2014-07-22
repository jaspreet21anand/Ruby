require_relative 'numeric'

class Array

  def group_by_odd_even
    
    hash_by_length.inject({ odd: [], even: [] }) do |temp, (key, value)|
      key.odd? ? temp[:odd] << value : temp[:even] << value
      temp
    end
    
  end
  
  def hash_by_length
    hash_variable = Hash.new { |hash, key| hash[key] = [] }

    for i in 0...length
      hash_variable[self[i].length] << self[i]
    end

    hash_variable
  end
end