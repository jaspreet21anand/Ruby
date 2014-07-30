require_relative 'negative_input_error'

class Integer

  def factorial
    number = self

    begin
    if number < 0
      raise NegativeInputError, "ERROR: negative number not allowed", caller
    end
    rescue NegativeInputError => error_object
      puts error_object.message
      puts 'resolving error by taking absolute value of input'
      number = self.abs
    end

    return 1 if number == 0 || number == 1
    (2..number).inject(:*)
  end

end
