require_relative 'offset_calculator'

class Encrypt
  attr_reader :oc

  def initialize(oc = OffsetCalculator.new)
    @oc = oc
  end

  def cipher(rotation = oc.offset)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter, rotation = oc.offset)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation = oc.offset)
    letters = string.split("")
    results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
    results.join
  end
end

enc = Encrypt.new
puts enc.encrypt_letter("e")
puts enc.encrypt("help help help")
puts enc.encrypt("ohh Shit we got encrpytion")
