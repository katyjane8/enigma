require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/key_generator'
require_relative 'test_helper'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    kg = KeyGenerator.new

    assert_instance_of KeyGenerator, kg
  end

  def test_we_can_generate_a_random_key
    kg = KeyGenerator.new

    result = kg.generate_key

    assert_equal 5, result.length
  end

 def test_can_we_get_the_first_two_digits_of_our_key
   kg = KeyGenerator.new

   array = ["1", "2", "3", "4", "5"]
   result = kg.a_rotation(array)

   assert_equal 2, result.length
   assert_equal "12", result
  end

  def test_can_we_get_the_second_two_digits_of_our_key
    kg = KeyGenerator.new

    array = ["1", "2", "3", "4", "5"]
    result = kg.b_rotation(array)
    p kg.key_helper
    p kg.a_rotation
    p kg.b_rotation

    assert_equal 2, result.length
    assert_equal "23", result
  end
end
