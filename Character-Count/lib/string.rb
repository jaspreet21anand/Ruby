class String

  SMALL_CHAR_RANGE = 'a'..'z'
  CAPS_CHAR_RANGE = 'A'..'Z'
  DIGITS_RANGE = '0'..'9'

  def count_characters_by_type
    character_count = Hash.new(0)
    each_char do |character|
      case character
      when SMALL_CHAR_RANGE
        character_count[:small_char] += 1
      when CAPS_CHAR_RANGE
        character_count[:caps_char] += 1
      when DIGITS_RANGE
        character_count[:digits] += 1
      else
        character_count[:special_char] += 1
      end
    end
    character_count
  end

end
