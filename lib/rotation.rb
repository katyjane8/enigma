require_relative 'key_generator'
require_relative 'offset_calculator'

class Rotation
  attr_reader :kg, :oc

  def initialize
    @kg = KeyGenerator.new
    @oc = OffsetCalculator.new
  end

  def first_rotation
    kg.a_rotation.to_i + oc.a_offset.to_i
  end

  def second_rotation
    b_rotation.to_i + b_offset.to_i
  end

  def third_rotation
    c_rotation.to_i + c_offset.to_i
  end

  def fourth_rotation
    d_rotation.to_i + d_offset.to_i
  end
end
