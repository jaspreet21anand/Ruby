require_relative 'numeric'

class Array

  def hash_by_length
    hash_variable = Hash.new { |hash, key| hash[key] = [] }

    for i in 0..length - 1
      hash_variable[self[i].length] << self[i]
    end

    hash_variable
  end

end