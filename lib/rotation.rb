require_relative 'key_generator'
require_relative 'offset_calculator'

class Rotation
  attr_reader :key_generator,
              :offset_calculator

  def initialize
    @key_generator = Key_Generator.new
    @offset_key= Offset_Calculator.new
    @foo = foo
    @bar = bar
  end

  def first_rotation(@key_generator, @offset_key)
    require "pry"; binding.pry
    @key_generator.a_rotation + @offset_key.a_offset
  end

end
