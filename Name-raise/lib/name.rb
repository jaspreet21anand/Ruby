require_relative 'blank_string_error'
require_relative 'first_char_not_capital_error'

class Name

  BLANK_STRING = /\S+/
  CHECK_SPECIAL_CHARACTER = /^(([^\s].*\W.*)|([^\s\w].*))/
  UPPER_CASE_FORMAT = /^[A-Z][A-Za-z\_]*\s*$/
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    Name.valid?(first_name)
    Name.valid?(last_name)

    @first_name = first_name
    @last_name = last_name
  end

  def self.valid?(string)
    begin
      if string !~ BLANK_STRING || string.nil?
        raise BlankStringError, 'ERROR: Field left blank'

      elsif string !~ UPPER_CASE_FORMAT
        raise FirstCharNotCapitalError, "ERROR: In #{ string }, first character should be Capital"

      end

    rescue FirstCharNotCapitalError => error
      puts error.message
    rescue BlankStringError => error
      puts error.message

    end
  end

end
