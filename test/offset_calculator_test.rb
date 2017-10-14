require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'
require_relative 'test_helper'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    oc = OffsetCalculator.new

    assert_instance_of OffsetCalculator, oc
  end

  def test_date_squared
    oc = OffsetCalculator.new
    date = "101417"

    result = oc.date_squared(date)

    assert_equal 10285407889, result
  end

  def test_offset
    oc = OffsetCalculator.new
    date = "101417"

    result = oc.date_squared(date)

    assert_equal 4, oc.offset.length
    assert_equal "7889", oc.offset.join
  end

# ask instructor if this needs to happen
  # def test_another_date_works
  #   oc = OffsetCalculator.new
  #   date = "053117"
  #
  #   result = oc.date_squared(date)
  #
  #   assert_equal 2821415689, result
  # end

  def test_if_a_offset_grabs_index_zero
    oc = OffsetCalculator.new
    date = "101417"

    result = oc.offset

    assert_equal "7", result[0]
  end

  def test_if_b_offset_grabs_index_one
    oc = OffsetCalculator.new
    date = "101417"

    result = oc.offset

    assert_equal "8", result[1]
  end

  def test_if_c_offset_grabs_index_two
    oc = OffsetCalculator.new
    date = "101417"

    result = oc.offset

    assert_equal "8", result[2]
  end

  def test_if_d_offset_grabs_index_three
    oc = OffsetCalculator.new
    date = "101417"

    result = oc.offset

    assert_equal "9", result[3]
  end
end
