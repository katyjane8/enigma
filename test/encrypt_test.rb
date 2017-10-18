require "minitest/autorun"
require "minitest/pride"
require "./lib/encrypt"
require_relative "test_helper"

class EncryptTest < Minitest::Test
  def test_it_exists
    enc = Encrypt.new

    assert_instance_of Encrypt, enc
  end

  def test_cipher_method
    enc = Encrypt.new
    array = ["a", "b", "c", "d", "e"]
    rotation = array.rotate(3)
    rotated_array = ["d", "e", "a", "b", "c"]
    zipper = Hash[array.zip(rotation)]
    zipped = {"a"=>"d", "b"=>"e", "c"=>"a", "d"=>"b", "e"=>"c"}

    assert_equal array, ("a".."e").to_a
    assert_equal rotated_array, rotation
    assert_equal zipped, zipper
    # assert_equal zipped, enc.cipher(3)
  end

  def test_we_can_encrypt_a_single_letter
    enc = Encrypt.new
    ciph = enc.encrypt_letter("a", 3)

    assert_equal "d", ciph
    refute_equal "+", ciph
  end

  def test_we_can_encrypt_a_string
    enc = Encrypt.new
    string = enc.encrypt("cab", 3)

    assert_equal "fde", string
    refute_equal "!@*", string
  end
end
=======
>>>>>>> katy
