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
    e = Encrypt.new
    array = ["a", "b", "c", "d", "e"]
    rotation = array.rotate(3)
    rotated_array = ["d", "e", "a", "b", "c"]
    zipper = Hash[array.zip(rotation)]
    zipped = {"a"=>"d", "b"=>"e", "c"=>"a", "d"=>"b", "e"=>"c"}

    assert_equal array, ("a".."e").to_a
    assert_equal rotated_array, rotation
    assert_equal zipped, zipper
    # assert_equal zipped, e.cipher(3)
  end

  def test_we_can_encrypt_a_single_letter
    e = Encrypt.new
    ciph = e.encrypt_letter("a", 3)

    assert_equal "d", ciph
    refute_equal "+", ciph
  end

  def test_we_can_encrypt_a_string
    e = Encrypt.new
    string = e.encrypt("cab", 3)

    assert_equal "fde", string
    refute_equal "!@*", string
  end
end
