class String

  VOWEL_REGEX = /[aeiou]/i
  def replace_vowels
    gsub(VOWEL_REGEX, '*')
  end

end
