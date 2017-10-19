require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset_calculator'
require_relative 'test_helper'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    offset_calc = OffsetCalculator.new

    assert_instance_of OffsetCalculator, offset_calc
  end

  def test_date_format_returns_correctly
    key_gen = KeyGenerator.new(23456)
    offset_calc = OffsetCalculator.new(key_gen, Date.new(2015, 11, 12))
    result = offset_calc.date_format

    assert_equal "121115", result
  end

  def test_any_date_squared
    key_gen = KeyGenerator.new(23456)
    oc = OffsetCalculator.new(key_gen, Date.new(2015, 11, 12))
    result = oc.date_squared

    assert_equal 14668843225, result
  end

  def test_todays_date_squared
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_squared

    assert_equal 32767154289, result
  end

  def test_date_array
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal 4, result.length
    assert_equal "4289", result.join
  end

  def test_if_offset_key_grabs_index_zero
    key_gen = KeyGenerator.new(34534)
    oc = OffsetCalculator.new(key_gen, Date.new(2015, 11, 12))
    result = oc.offset_key

    assert_equal 37, result[0]
  end

  def test_date_array_length
    key_gen = KeyGenerator.new
    oc = OffsetCalculator.new(key_gen, Date.today)
    result = oc.date_array

    assert_equal 4, result.length
  end

  def test_if_offset_key_grabs_index_zero_for_todays_date
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.date_array

    assert_equal "4", result[0]
  end

  def test_if_offset_key_grabs_index_one
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal "2", result[1]
  end

  def test_if_offset_key_grabs_index_two
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal "8", result[2]
  end

  def test_if_offset_key_grabs_index_three
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal "9", result[3]
  end

  def test_offset_method_returns_array_class
    kg = KeyGenerator.new
    oc = OffsetCalculator.new(kg, Date.today)
    result = oc.offset_key

    assert_equal Array, result.class
  end

end
