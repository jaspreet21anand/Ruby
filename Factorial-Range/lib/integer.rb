class Integer

  def factorial
    return 1 if self == 0 || self == 1
    (2..self).inject(:*)
  end

end
