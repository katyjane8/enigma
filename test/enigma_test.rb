require "minitest/autorun"
require "minitest/pride"
require "./lib/enigma"

class EnigmaTest < Minitest::Test
  def test_enigma_class_exists
    e = Enigma.new

    assert_instance_of Enigma, e
  end

  def test_enigma_can_encrypt_one_letter
    e = Enigma.new
    ciph = e.encrypt_letter("a", 3)

    assert_equal "d", ciph
  end

  def test_encrypt_method_takes_arguements
    e = Enigma.new

    assert e.encrypt("hello world")
    assert e.encrypt("hello world", "12345")
    assert e.encrypt("hello world", "12345", Date.today)
  end
end
