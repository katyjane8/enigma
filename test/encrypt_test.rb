require "minitest/autorun"
require "minitest/pride"
require "./lib/encrypt"

class EncryptTest < Minitest::Test
  def test_it_calls_my_classes
    rotate = Rotation.new

    assert_instance_of Rotation, rotate
  end

  def test_does_encryption_exist
    e = Encrypt.new

    assert_instance_of Encrypt, e
  end
end
