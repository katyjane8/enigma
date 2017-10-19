require "minitest/autorun"
require "minitest/pride"
require "./lib/offset_calculator"
require "./lib/decrypt"

class DecryptTest < Minitest::Test
  def test_it_exists
    decrypt = Decrypt.new

    assert_instance_of Decrypt, decrypt
  end

  def test_valid_key_evaluates_to_true
    decrypt_with_int    = Decrypt.new.valid_key?(12345)
    decrypt_with_string = Decrypt.new.valid_key?("abcde")
    decrypt_with_less   = Decrypt.new.valid_key?(123)

    assert_equal true,  decrypt_with_int
    assert_equal false, decrypt_with_string
    assert_equal false, decrypt_with_less
  end
end
