class Time

  REGEX = /^(([0-1]\d)|(2[0-3])|\d):(([0-5]\d)|\d):(([0-5]\d)|\d)\z/
  def self.validate?(time_string)
    !!(time_string =~ REGEX)
  end

  def sum(time)
    summed_time = time + hour * 3600 + min * 60 + sec
    "#{"#{summed_time.day - day} day" if summed_time.day != time.day } & #{ summed_time.hour }:#{ summed_time.min }:#{ summed_time.sec }"
  end

end
