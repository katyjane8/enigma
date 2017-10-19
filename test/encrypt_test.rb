require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require_relative 'test_helper'

class EncryptTest < Minitest::Test
  def test_it_exists
    enc = Encrypt.new

    assert_instance_of Encrypt, enc
  end

  def test_string_splits_into_array
    enc = Encrypt.new
    string = "super cool string"

    assert_equal ["srotg", "u lr", "pc i", "eosn"], enc.splits_into_arrays(string)
  end

  def test_string_can_become_final_key
    enc = Encrypt.new

    assert_equal 4, enc.final_key("super cool string").length
  end

  def test_cipher_method_in_module
    enc = Encrypt.new
    array = ["a", "b", "c", "d", "e"]
    rotation = array.rotate(3)
    rotated_array = ["d", "e", "a", "b", "c"]
    zipper = Hash[array.zip(rotation)]
    zipped = {"a"=>"d", "b"=>"e", "c"=>"a", "d"=>"b", "e"=>"c"}

    assert_equal rotated_array, rotation
    assert_equal zipped, zipper
  end

  def test_we_can_encrypt_a_single_letter
    enc = Encrypt.new
    ciph = enc.encrypt_letter("a", 3)

    assert_equal "d", ciph
    refute_equal "+", ciph
  end

  def test_we_can_encrypt_a_string
    enc = Encrypt.new
    string = enc.encrypt_string("cab", 3)

    assert_equal "fde", string
    refute_equal "!@*", string
  end

  def test_write_file
    enc = Encrypt.new
    # enc.encrypt
    file = File.open('./test_write_file.txt', 'r')
    file_text = file.read
    file.close

    assert_equal "hey there", file_text.chomp
  end
end
