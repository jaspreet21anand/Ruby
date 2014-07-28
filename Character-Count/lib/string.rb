class String

  def count_characters_by_type
    count = Hash.new { |hash, key| hash[key] = 0 }
    chars.each do |character|
      case character
      when 'a'..'z'
        count[:small_char] += 1
      when 'A'..'Z'
        count[:caps_char] += 1
      when '0'..'9'
        count[:digits] += 1
      else
        count[:special_char] += 1
      end
    end
    count
  end

end
