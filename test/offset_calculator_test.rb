require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offset_calculator'
require_relative 'test_helper'

class OffsetCalculatorTest < Minitest::Test
  def test_it_exists
    offset_calc = OffsetCalculator.new

    assert_instance_of OffsetCalculator, offset_calc
  end

  def test_any_date_squared
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.new(2015, 11, 12))
    result = offset_calc.date_squared

    assert_equal 14668843225, result
  end

  def test_todays_date_squared
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_squared

    assert_equal 25926474289, result
  end

  def test_date_array
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal 4, offset_calc.date_array.length
    assert_equal "4289", offset_calc.date_array.join
  end

  def test_if_a_offset_grabs_index_zero
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal "4", result[0]
  end

  def test_if_b_offset_grabs_index_one
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal "2", result[1]
  end

  def test_if_c_offset_grabs_index_two
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal "8", result[2]
  end

  def test_if_d_offset_grabs_index_three
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    result = offset_calc.date_array

    assert_equal Integer, oc.offset.class
  end

  def test_offset_method
    key_gen = KeyGenerator.new
    offset_calc = OffsetCalculator.new(key_gen, Date.today)
    # result = offset_calc.offset

    assert_equal Integer, offset_calc.a_offset.class
  end
end
