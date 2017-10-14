require 'date'

class OffsetCalculator
  attr_reader :date
  def initialize
    @date = Time.now.strftime("%m%d%y")
  end

  def date_squared(date)
    @date.to_i ** 2
  end
  # should we rename our method so that we don't have a variable of the same name?
  def offset
    convert_offset = date_squared(date).to_s.chars
    convert_offset[-4, 4]
  end

  def a_offset
    offset[0]
  end

  def b_offset
    offset[1]
  end

  def c_offset
    offset[2]
  end

  def d_offset
    offset[3]
  end
end
