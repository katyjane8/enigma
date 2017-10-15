require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotation'
require_relative 'test_helper'

class RotationTest < Minitest::Test
  def test_it_calls_my_classes
    call_key = KeyGenerator.new
    offset_key = OffsetCalculator.new
    rotate = Rotation.new
    rotate.first_rotation(call_key, offset_key)
  end
end
