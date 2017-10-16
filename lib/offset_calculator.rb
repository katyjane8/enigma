require_relative 'key_generator'
require 'date'

class OffsetCalculator
  attr_reader :kg,
              :date,
              :a_rot,
              :b_rot,
              :c_rot,
              :d_rot

  def initialize(kg = KeyGenerator.new, date = Date.today)
    @kg   = kg
    @date = date
  end

  def date_format
    "#{@date.mday}#{@date.mon}#{@date.year.to_s[-2, 2]}"
  end

  def date_squared
    date_format.to_i ** 2
  end
  # should we rename our method so that we don't have a variable of the same name?
  def date_array
    convert_offset = date_squared.to_s.chars
    convert_offset[-4, 4]
  end

  def offset
    a_rot = kg.a_rotation + date_array[0].to_i
    b_rot = kg.b_rotation + date_array[1].to_i
    c_rot = kg.c_rotation + date_array[2].to_i
    d_rot = kg.d_rotation + date_array[3].to_i
  end
end
