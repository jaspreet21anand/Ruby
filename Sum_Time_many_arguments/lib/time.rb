class Time
  SECONDS_IN_A_DAY = 86400
  SECONDS_IN_AN_HOUR = 3600
  REGEX = /^(([0-1]\d)|(2[0-3])|\d):(([0-5]\d)|\d):(([0-5]\d)|\d)\z/

  def self.validate?(time_string)
    !!(time_string =~ REGEX)
  end

  def sum(*time)
    summed_sec = self.to_sec
    time.each do |time|
      summed_sec += time.to_sec
    end
    summed_time = normalize_time(summed_sec)
    "#{ "#{ summed_time[:day] } day & " if summed_time[:day] != 0 }#{ summed_time[:hour] }:#{ summed_time[:min] }:#{ summed_time[:sec] }"
  end

  protected
  def to_sec
    hour * 3600 + min * 60 + sec
  end

  def normalize_time(summed_sec)
    summed_time = Hash.new
    summed_time[:day] = summed_sec / SECONDS_IN_A_DAY
    residue_sec_after_day = summed_sec % SECONDS_IN_A_DAY
    summed_time[:hour] = (residue_sec_after_day) / SECONDS_IN_AN_HOUR
    residue_sec_after_hour = residue_sec_after_day % SECONDS_IN_AN_HOUR
    summed_time[:min] = (residue_sec_after_hour) / 60
    summed_time[:sec] = (residue_sec_after_hour) % 60 % 60
    summed_time
  end

end
