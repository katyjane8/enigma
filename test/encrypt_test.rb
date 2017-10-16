require "minitest/autorun"
require "minitest/pride"
require "./lib/offset_calculator"
require "./lib/encrypt"

class EncryptTest < Minitest::Test
  def test_it_exists
    e = Encrypt.new

    assert_instance_of Encrypt, e
  end
end
