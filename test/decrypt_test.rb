require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'
require_relative 'test_helper'

class DecryptTest < Minitest::Test
  def test_it_exists
    dc = Decrypt.new

    assert_instance_of Decrypt, dc
  end

end
