require_relative 'negative_input_error'

class Integer

  def factorial
    if self < 0
      raise NegativeInputError, "ERROR: negative number not allowed"
    end

    return 1 if self == 0 || self == 1
    (2..self).inject(:*)
  end

end
