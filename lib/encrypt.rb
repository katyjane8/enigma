require_relative 'offset_calculator'
require_relative 'key_generator'

class Encrypt
  attr_reader :oc,
              :kg

  def initialize(oc = OffsetCalculator.new, kg = KeyGenerator.new)
    @oc = oc
    @kg = kg
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

  def output
    puts "Created -- with the key #{kg.key_output} and date #{oc.date_format}."
  end
end

enc = Encrypt.new
puts enc.encrypt_letter("e")
puts enc.encrypt("help help help")
puts enc.encrypt("ohh Shit we got encrpytion")
puts enc.output
