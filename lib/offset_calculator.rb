require_relative 'key_generator'
require 'date'

class OffsetCalculator
  attr_reader :key_gen,
              :date

  def initialize(key_gen = KeyGenerator.new, date = Date.today)
    @key_gen   = key_gen
    @date      = date
  end

  def date_format
    "#{@date.mday}#{@date.mon}#{@date.year.to_s[-2, 2]}"
  end

  def date_squared
    date_format.to_i ** 2
  end

  def date_array
    convert_offset = date_squared.to_s.chars
    convert_offset[-4, 4]
  end

  def a_offset
    a_rotation = key_gen.a_rotation + date_array[0].to_i
  end

  def b_offset
    b_rotation = key_gen.b_rotation + date_array[1].to_i
  end

  def c_offset
    c_rotation = key_gen.c_rotation + date_array[2].to_i
  end

  def d_offset
    d_rotation = key_gen.d_rotation + date_array[3].to_i
  end
end
