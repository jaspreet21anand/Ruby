require_relative 'timehhmmss'

class String

  def sum_time(time_2)
    time1 = TimeHHMMSS.new(self)
    time2 = TimeHHMMSS.new(time_2)

    time1.sum(time2)
  end

end
