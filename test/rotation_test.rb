require 'minitest/autorun'
require 'minitest/pride'
require './lib/rotation'
require_relative 'test_helper'

class RotationTest < Minitest::Test
  # attr_reader :kg,
  #             :oc,
  #             :rotation
# Come back to this for refactoring
  # def setup
    # @kg = KeyGenerator.new
    # @oc = OffsetCalculator.new
    # @rotation = Rotation.new
    #
    # array = ["1", "2", "3", "4", "5"]
    # date = "101417"
    # offset_stuff = oc.offset
  # end

  def test_it_calls_my_classes
    kg = KeyGenerator.new
    oc = OffsetCalculator.new

    assert_instance_of KeyGenerator, kg
    assert_instance_of OffsetCalculator, oc
  end

  def test_rotation_exists
    rotation = Rotation.new

    assert_instance_of Rotation, rotation
  end

  def test_first_rotation_works
    kg = KeyGenerator.new
    oc = OffsetCalculator.new
    rotation = Rotation.new

    array = ["1", "2", "3", "4", "5"]
    key_stuff = kg.a_rotation(array)

    date = "101517"
    # squared result is 1289
    offset_stuff = oc.a_offset

    result = kg.a_rotation(array).to_i + oc.a_offset.to_i

    assert_equal 13, result
  end

  def test_second_rotation_works
    kg = KeyGenerator.new
    oc = OffsetCalculator.new
    rotation = Rotation.new

    array = ["1", "2", "3", "4", "5"]
    key_stuff = kg.b_rotation(array)

    date = "101517"
    # squared result is 1289
    offset_stuff = oc.offset

    result = kg.b_rotation(array).to_i + oc.b_offset.to_i

    assert_equal 25, result
  end

  def test_third_rotation_works
    kg = KeyGenerator.new
    oc = OffsetCalculator.new
    rotation = Rotation.new

    array = ["1", "2", "3", "4", "5"]
    key_stuff = kg.c_rotation(array)

    date = "101517"
    # squared result is 1289
    offset_stuff = oc.offset

    result = kg.c_rotation(array).to_i + oc.c_offset.to_i

    assert_equal 42, result
  end

  def test_fourth_rotation_works
    kg = KeyGenerator.new
    oc = OffsetCalculator.new
    rotation = Rotation.new

    array = ["1", "2", "3", "4", "5"]
    key_stuff = kg.a_rotation(array)

    date = "101517"
    # squared result is 1289
    offset_stuff = oc.offset

    result = kg.d_rotation(array).to_i + oc.d_offset.to_i

    assert_equal 54, result
  end
end
