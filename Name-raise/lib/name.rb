require_relative 'blank_string_error'
require_relative 'first_char_not_capital_error'

class Name

  BLANK_STRING_REGEX = /\S+/
  FIRST_CHAR_UPPER_CASE_REGEX = /^[A-Z].*/
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    is_blank?(first_name, 'First Name')
    is_blank?(last_name, 'Last Name')
    is_first_char_capital?(first_name, 'First Name')

    @first_name = first_name
    @last_name = last_name
  end

  private

  def is_blank?(string, field_name)
    if string !~ BLANK_STRING_REGEX
      raise BlankStringError, "ERROR: #{ field_name } Field left blank"
    end
  end

  def is_first_char_capital?(string, field_name)
    if string !~ FIRST_CHAR_UPPER_CASE_REGEX
      raise FirstCharNotCapitalError, "ERROR: In #{ field_name }, first character must be Capital"
    end
  end
  
end
