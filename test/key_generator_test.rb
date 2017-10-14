require_relative '../lib/key_generator'
require_relative 'test_helper'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    kg = KeyGenerator.new
    assert_instance_of KeyGenerator, kg
  end

end
