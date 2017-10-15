require_relative 'key_generator'

class OffsetCalculator
  attr_reader :date, :kg

  def initialize(kg = KeyGenerator.new, date = Date.today)
    @date = date
    @kg = kg
  end

  def date_format
    string = "#{@date.mday}#{@date.mon}#{@date.year.to_s[-2, 2]}"
  end

  def date_squared
    date_format.to_i ** 2
  end
  # should we rename our method so that we don't have a variable of the same name?
  def offset
    convert_offset = date_squared.to_s.chars
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
