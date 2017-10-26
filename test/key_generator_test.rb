require_relative 'test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_it_exists
    key_gen = KeyGenerator.new(23433)

    assert_instance_of KeyGenerator, key_gen
  end

  def test_we_can_generate_a_random_key
    key_gen = KeyGenerator.new(23433)

    assert_equal 4, key_gen.rotation.length
  end

  def test_first_index_is_correct
    key_gen = KeyGenerator.new(23433)

    assert_equal 23, key_gen.rotation[0]
  end
end
