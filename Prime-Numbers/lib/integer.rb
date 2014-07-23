require 'prime'
class Integer

  def prime_numbers_till(up_limit)
    string_of_prime = ""
    string_of_prime << "2 " if up_limit > 2
    (1..up_limit).step(2) do |number|
      string_of_prime << "#{ number } " if number.prime?
    end
    string_of_prime
  end
end
