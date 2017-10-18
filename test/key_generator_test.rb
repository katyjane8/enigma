require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require_relative 'test_helper'

class KeyGeneratorTest < Minitest::Test
  def test_it_exists
    key_gen = KeyGenerator.new

    assert_instance_of KeyGenerator, key_gen
  end

  def test_we_can_generate_a_random_key
    key_gen = KeyGenerator.new
    result = key_gen.generate_key
    
    assert_equal 5, result.to_s.length
  end

  def test_can_we_get_the_first_two_digits_of_our_key
     key_gen = KeyGenerator.new

     array = ["1", "2", "3", "4", "5"]
     result = key_gen.a_rotation(array)

     assert_equal 2, result.to_s.length
     assert_equal 12, result
  end

  def test_can_we_get_the_second_and_third_digits_of_our_key
    key_gen = KeyGenerator.new

    array = ["1", "2", "3", "4", "5"]
    result = key_gen.b_rotation(array)

    assert_equal 2, result.to_s.length
    assert_equal 23, result
  end

  def test_can_we_get_the_third_and_fourth_digits_of_our_key
    key_gen = KeyGenerator.new
    array = ["1", "2", "3", "4", "5"]
    result = key_gen.c_rotation(array)

    assert_equal 2, result.to_s.length
    assert_equal 34, result
  end

  def test_can_we_get_the_last_two_digits_of_our_key
    key_gen = KeyGenerator.new

    array = ["1", "2", "3", "4", "5"]
    result = key_gen.d_rotation(array)

    assert_equal 2, result.to_s.length
    assert_equal 45, result
  end
end
