require "minitest/autorun"
require "minitest/pride"
require "./lib/offset_calculator"
require "./lib/encrypt"

class EncryptTest < Minitest::Test
  def test_it_exists
    e = Encrypt.new

    assert_instance_of Encrypt, e
  end

  def test_cipher_method

  end

  def test_we_can_encrypt_a_single_letter

  end
  
  def test_we_can_encrypt_a_string

  end
end
