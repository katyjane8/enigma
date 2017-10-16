require_relative 'offset_calculator'
require 'pry'

class Encrypt
  def initialize(oc = OffsetCalculator.new)
    @oc = oc
  end
  
  def cipher(rotation)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, rotation)
    letters = string.split("")
    results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
    results.join
  end
end
