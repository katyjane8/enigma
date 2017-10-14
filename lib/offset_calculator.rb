require 'date'
require 'pry'

class OffsetCalculator
  attr_reader :date
  def initialize
    @date = Time.now.strftime("%m%d%y")
  end

  def date_squared(date)
    @date.to_i ** 2
  end

  def offset
    offset = date_squared(date).to_s.chars
    offset[-4, 4]
  end
end
