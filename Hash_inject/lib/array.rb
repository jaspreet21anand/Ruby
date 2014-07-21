class Array

  def hash_by_odd_eve
    hash_variable = Hash.new { |hash, key| hash[key] = [] }

    for i in 0..length - 1
      hash_variable[self[i].to_s.length] << self[i]
    end

    hash_variable.inject({ "odd" => [], "eve" => [] }) do |temp, (key, value)|
      key.odd? ? temp["odd"] << value : temp["eve"] << value
      temp
    end
    
  end
  
end