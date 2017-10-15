require_relative 'key_generator'
require_relative 'offset_calculator'

class Rotation
  attr_reader :key, :offset

  def initialize

  end

  def first_rotation(key, offset)
    a_rotation + a_offset
  end

end

key = KeyGenerator.new
offset = OffsetCalculator.new
