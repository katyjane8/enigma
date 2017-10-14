require_relative 'key_generator'
require_relative 'offset_calculator'

class Rotation
  attr_reader :key_generator,
              :offset_calculator

  def initialize
    require "pry"; binding.pry
    @key_generator = key_generator
    @offset_calculator = offset_calculator
  end

  def first_rotation
    require "pry"; binding.pry
    @key_generator.a_rotation + @offset_calculator.offset
  end

end
