require_relative 'test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decrypt'

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

  def test_valid_date_evaluates_to_true
    decrypt_with_int    = Decrypt.new.valid_date?(123456)
    decrypt_with_string = Decrypt.new.valid_date?("abcdef")
    decrypt_with_less   = Decrypt.new.valid_date?(123)

    assert_equal true,  decrypt_with_int
    assert_equal false, decrypt_with_string
    assert_equal false, decrypt_with_less
  end

  def test_date_can_be_squared
    decrypt_squared = Decrypt.new.date_squared(131017)

    assert_equal 17165454289, decrypt_squared
  end

  def test_date_can_get_last_four_elements
    decrypt_last_four = Decrypt.new.date_last_four(17165454289)

    assert_equal 4, decrypt_last_four.length
    assert_equal "4289", decrypt_last_four.join
  end
end
