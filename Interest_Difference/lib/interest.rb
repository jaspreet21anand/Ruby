class Interest

  def initialize &printmessage
    @principle = printmessage.call('principle').to_f
    @rate = printmessage.call('rate').to_f
  end

  def difference_in_CI_and_SI
    si = @principle * @rate/100 * 10
    ci = @principle * (((1 + @rate/100) ** 10) - 1)
    return (ci - si), ci, si
  end

end
