require "minitest/autorun"
require "minitest/pride"
require "./lib/decrypt"
require_relative "test_helper"

class EncryptTest < Minitest::Test
  def test_it_exists
    dc = Decrypt.new

    assert_instance_of Decrypt, dc
  end

  def test_cipher_method

  end

  def test_we_can_decrypt_a_single_letter

  end

  def test_we_can_decrypt_a_string

  end
end
