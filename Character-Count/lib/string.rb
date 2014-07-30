class String

  SMALL_CHAR = 'a'..'z'
  CAPS_CHAR = 'A'..'Z'
  DIGITS = '0'..'9'

  def count_characters_by_type
    character_count = Hash.new(0)
    chars.each do |character|
      case character
      when SMALL_CHAR
        character_count[:small_char] += 1
      when CAPS_CHAR
        character_count[:caps_char] += 1
      when DIGITS
        character_count[:digits] += 1
      else
        character_count[:special_char] += 1
      end
    end
    character_count
  end

end
