class Time

  SECONDS_IN_A_DAY = 86400
  REGEX = /^(([0-1]\d)|(2[0-3])|\d):(([0-5]\d)|\d):(([0-5]\d)|\d)\z/
  def self.validate?(time_string)
    !!(time_string =~ REGEX)
  end

  def sum(time)
    summed_sec = time.to_sec + self.to_sec
    summed_time = normalize_time(summed_sec)
    "#{"#{ summed_time[0] } day & " if summed_time[0] != 0 }#{ summed_time[1] }:#{ summed_time[2] }:#{ summed_time[3] }"
  end

  protected
  def to_sec
    hour * 3600 + min * 60 + sec
  end

  def normalize_time(summed_sec)
    summed_time = []
    summed_time[0] = summed_sec / SECONDS_IN_A_DAY
    summed_time[1] = (summed_sec % SECONDS_IN_A_DAY) / 3600
    summed_time[2] = ((summed_sec % SECONDS_IN_A_DAY) % 3600) / 60
    summed_time[3] = ((summed_sec % SECONDS_IN_A_DAY) / 3600) % 60
  summed_time
  end

end
