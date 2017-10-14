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

   result = kg.generate_key.chars
   assert_equal result[0], result.shift
   assert_equal result[0], result.shift
   assert_equal 3, result.length
  end

  def test_can_we_get_the_second_two_digits_of_our_key
    skip
    kg = KeyGenerator.new

    assert_equal 5, kg.b_rotation
  end
end
