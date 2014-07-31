require_relative 'blank_string_error'
require_relative 'first_char_not_capital_error'

class Name

  BLANK_STRING_REGEX = /\S+/
  UPPER_CASE_FORMAT = /^[A-Z].*/
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    valid?(first_name, 'First Name')
    valid?(last_name, 'Last Name')

    @first_name = first_name
    @last_name = last_name
  end

  def valid?(string, field_name)
    if string !~ BLANK_STRING_REGEX
      raise BlankStringError, "ERROR: #{ field_name } Field left blank"
    elsif field_name != 'Last Name' && string !~ UPPER_CASE_FORMAT
      raise FirstCharNotCapitalError, "ERROR: In #{ field_name }, first character must be Capital"
    end
  end
  private :valid?
end
