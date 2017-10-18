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
   key = ["12", "23", "45"]
   result = key_gen.rotation(key)

  #  assert_equal 2, result.to_s.length
   assert_equal "12", result[0]
  end

  def test_can_we_get_the_first_two_digits_of_our_key
     key_gen = KeyGenerator.new
     digits = [0,1,2,3,4,5,6,7,8,9]
     key = key_gen.generate_key
     result = key_gen.rotation(key).include?

     rotation(key).include? (digits)

    #  assert_equal 2, result.to_s.length
     assert_equal "12", result[0]
  end

  # def test_can_we_get_the_second_and_third_digits_of_our_key
  #   skip
  #   key_gen = KeyGenerator.new
  #
  #   array = ["1", "2", "3", "4", "5"]
  #   result = key_gen.rotation(array)
  #
  #   assert_equal 2, result.to_s.length
  #   assert_equal 23, result[1]
  # end
  #
  # def test_can_we_get_the_third_and_fourth_digits_of_our_key
  #   skip
  #   key_gen = KeyGenerator.new
  #   array = ["1", "2", "3", "4", "5"]
  #   result = key_gen.rotation(array)
  #
  #   assert_equal 2, result.to_s.length
  #   assert_equal 34, result[2]
  # end
  #
  # def test_can_we_get_the_last_two_digits_of_our_key
  #   skip
  #   key_gen = KeyGenerator.new
  #
  #   array = ["1", "2", "3", "4", "5"]
  #   result = key_gen.rotation(array)
  #
  #   assert_equal 2, result.to_s.length
  #   assert_equal 45, result[3]
  # end
end
