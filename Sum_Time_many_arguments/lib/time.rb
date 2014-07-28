class Time

  REGEX = /^(([0-1]\d)|(2[0-3])|\d):(([0-5]\d)|\d):(([0-5]\d)|\d)\z/
  def self.validate?(time_string)
    !!(time_string =~ REGEX)
  end

  def sum(*time)
    summed_sec = self.to_sec
    summed_sec = time.inject(summed_sec) do |summed_sec, time|
      summed_sec += time.to_sec
      end
    summed_day = summed_sec / (3600 * 24)
    summed_hour = (summed_sec % (3600 * 24)) / 3600
    summed_min = ((summed_sec % (3600 * 24)) % 3600) / 60
    summed_sec = ((summed_sec % (3600 * 24)) / 3600) % 60
    "#{ "#{ summed_day } day" if summed_day != 0 } #{ summed_hour }:#{ summed_min }:#{ summed_sec }"
  end

  protected
  def to_sec
    hour * 3600 + min * 60 + sec
  end

end
