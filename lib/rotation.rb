require_relative 'key_generator'
require_relative 'offset_calculator'

class Rotation
  attr_reader :key, :offset

  def initialize

  end

  def first_rotation(key, offset)
    a_rotation + a_offset
  end

  def second_rotation(key, offset)
    b_rotation + b_offset
  end

  def third_rotation(key, offset)
    c_rotation + c_offset
  end

  def fourth_rotation(key, offset)
    d_rotation + d_offset
  end
end

key = KeyGenerator.new
offset = OffsetCalculator.new
