class Time

  def self.validate_time(time_string)
    time_array = time_string.sub(/(?<time>\d{1,2}\s*:\s*\d{1,2}\s*.\s*\d{0,2})/, '\k<time>').split(':')
    hh = time_array[0].to_i
    mm = time_array[1].to_i
    ss = time_array[2].to_i

    if hh < 24 && mm < 60 && ss < 60
      return Time.new(1970, 1, 1, hh, mm, ss, "+00:00")
    else
      puts 'Invalid time'
      return nil
    end

  end

  def sum_time(*time)
    summed_time = self
    summed_time = time.inject(summed_time) do |summed_time, time|
      summed_time += time.to_sec
      end
    "#{ summed_time.day - day if summed_time.day != day } #{ summed_time.hour }:#{ summed_time.min }:#{ summed_time.sec }"
  end

  protected
  def to_sec
    hour * 3600 + min * 60 + sec
  end

end
