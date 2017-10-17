require_relative 'offset_calculator'
require_relative 'key_generator'

class Encrypt
  include Rotater

  attr_reader :offset_calc,
              :key_gen,
              :string

  def initialize(offset_calc = OffsetCalculator.new, key_gen = KeyGenerator.new, rotation = @rotation)
    @offset_calc = offset_calc
    @key_gen     = key_gen
    @rotation    = rotation
  end

  def a_splits(string)
    splitter = string.chars
    a_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 0 }
    a_string.compact
  end

  def cipher(rotate = offset_calc.a_offset, string)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotate)
    Hash[characters.zip(rotated_characters)]
  end

  def b_splits(string)
    splitter = string.chars
    b_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 1 }
    b_string.compact
  end

  def c_splits(string)
    splitter = string.chars
    c_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 2 }
    c_string.compact
  end

  def d_splits(string)
    splitter = string.chars
    d_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 3 }
    d_string.compact
  end
end 

  # def alla_shazam(rotation)
  # call cipher module - input oc.a_offset as argument
  # use that rotated char map on a_string and swap characters
  # end

  # def cipher(rotation = oc.offset)
  #   characters = ("a".."z").to_a
  #   rotated_characters = characters.rotate(rotation)
  #   Hash[characters.zip(rotated_characters)]
  # end

  # def encrypt_letter(letter, rotation = oc.offset)
  #   cipher_for_rotation = cipher(rotation)
  #   cipher_for_rotation[letter]
  # end
  #
  # def encrypt(string, rotation = oc.offset)
  #   letters = string.split("")
  #   results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
  #   results.join
  # end
  #
  # def decrypt(string, rotation = -(oc.offset), j)
  #    letters = string.split("")
  #    results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
  #    results.join
  #  end

  def output
    puts "Created -- with the key #{key_gen.key_output} and date #{offset_calc.date_format}."
  end
end
enc = Encrypt.new
oc = OffsetCalculator.new
# puts enc.encrypt_letter("e")
# puts enc.encrypt("help help help")
# puts enc.encrypt("ohh Shit we got encrpytion")
puts enc.output
print enc.a_splits("try this string"); puts ""
print enc.a_funky_chicken("try this string"); puts ""
# chegg_this_out = Hash[enc.a_splits("trythisstring").zip(enc.a_funky_chicken("trythisstring"))]
# p chegg_this_out
# p chegg_this_out.invert
print enc.b_splits("try this string"); puts ""
print enc.c_splits("try this string"); puts ""
print enc.d_splits("try this string"); puts ""
