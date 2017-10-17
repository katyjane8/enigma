require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offset_calculator'
require_relative 'test_helper'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    oc = OffsetCalculator.new

    assert_instance_of OffsetCalculator, oc
  end

  def test_any_date_squared
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.new(2015, 11, 12))
    result = oc.date_squared

    assert_equal 14668843225, result
  end

  def test_todays_date_squared
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.date_squared

    assert_equal 25926474289, result
  end

  def test_date_array
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.date_array

    assert_equal 4, oc.date_array.length
    assert_equal "4289", oc.date_array.join
  end

  def test_if_a_offset_grabs_index_zero
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.date_array

    assert_equal "4", result[0]
  end

  def test_if_b_offset_grabs_index_one
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.date_array

    assert_equal "2", result[1]
  end

  def test_if_c_offset_grabs_index_two
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.date_array

    assert_equal "8", result[2]
  end

  def test_if_d_offset_grabs_index_three
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.date_array

    assert_equal "9", result[3]
  end

  def test_offset_method
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.offset

    assert_equal Integer, oc.offset.class
  end
end
