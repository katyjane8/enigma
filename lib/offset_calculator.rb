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

  def offset_key
    complete_key = []
    counter = 0
    4.times do
      offset_rotation = key_gen.rotation[counter] + date_array[counter].to_i
      complete_key << offset_rotation
      counter += 1
    end
    complete_key
  end
end
