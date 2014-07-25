require 'prime'
class Integer

  def prime_numbers_till(upper_limit)
    string_of_prime = []
    string_of_prime << 2 if upper_limit > 2
    (1..upper_limit).step(2) do |number|
      string_of_prime << number if number.prime?
    end
    string_of_prime
  end
end
