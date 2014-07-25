class TimeHHMMSS

  attr_accessor :hh, :mm, :ss, :valid, :day

  def initialize(time_string)
    time_array = time_string.sub(/(?<time>\d{1,2}\s*:\s*\d{1,2}\s*.\s*\d{0,2})/, '\k<time>').split(':')
    @hh = time_array[0].to_i
    @mm = time_array[1].to_i
    @ss = time_array[2].to_i
    @valid = validate
    @day = 0

    if !validate
      puts "invalid time #{ self }"
    end

  end

  def sum(time2)
    return "Invalid time addition" if !(valid && time2.valid)
    summed_time = TimeHHMMSS.new('')
    summed_time.hh = hh + time2.hh
    summed_time.mm = mm + time2.mm
    summed_time.ss = ss + time2.ss
    if summed_time.ss >= 60
      summed_time.ss %= 60
      summed_time.mm += 1
    end
    if summed_time.mm >= 60
      summed_time.mm %= 60
      summed_time.hh += 1
    end
    if summed_time.hh >= 24
      summed_time.hh %= 24
      summed_time.day += 1
    end
    summed_time
  end

  def to_s
    "#{ "1 day " if day == 1}#{ hh }:#{ mm }:#{ ss }"
  end

  def validate
    if hh < 24 && mm < 60 && ss < 60
      return true
    else
      return false
    end
  end

end
