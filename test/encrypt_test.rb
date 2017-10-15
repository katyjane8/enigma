require "minitest/autorun"
require "minitest/pride"
require "./lib/encrypt"

class EncryptTest < Minitest::Test
  def test_it_calls_my_classes
    rotate = Rotation.new
    e = Encrypt.new

    assert_instance_of Rotation, e.rotate
  end

  def test_does_encryption_exist
    e = Encrypt.new

    assert_instance_of Encrypt, e
  end

  def test_encrypt_on_first_rotation
    e = Encrypt.new
    result = e.encryption(0)

    assert_equal 13, e.result
  end
end
