require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotation'
require_relative 'test_helper'

class RotationTest < Minitest::Test
  def test_it_calls_my_classes
    key = KeyGenerator.new
    offset = OffsetCalculator.new

    assert_instance_of KeyGenerator, key
    assert_instance_of OffsetCalculator, offset
  end

  def test_rotation_exists
    rotation = Rotation.new

    assert_instance_of Rotation, rotation
  end

  def test_first_rotation_works
    kg = KeyGenerator.new
    oc = OffsetCalculator.new
    rotation = Rotation.new

    result = kg.a_rotation + oc.a_offset

    assert_equal "651", result
  end
end
