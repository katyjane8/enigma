require_relative 'offset_calculator'
require_relative 'key_generator'
<<<<<<< HEAD
require_relative 'characters'
require_relative 'encrypt'

class Decrypt
  include Characters

  attr_reader :offset_calc,
              :key_gen,
              :string
              :encrypt

  def initialize(offset_calc = OffsetCalculator.new, key_gen = KeyGenerator.new, rotation = @rotation, encrypt = Encrypt.new)
    @offset_calc = offset_calc
    @key_gen     = key_gen
    @rotation    = rotation
    @encrypt     = encrypt
  end

  def a_splits(encrypt.smush(string))
    splitter = string.chars
    a_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 0 }
    a_string.compact.join
  end

  def a_rotated(encrypt.smush(string))
    encrypt(a_splits(string), offset_calc.a_offset)
  end

  def b_splits(encrypt.smush(string))
    splitter = string.chars
    b_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 1 }
    b_string.compact.join
  end

  def b_rotated(encrypt.smush(string))
    encrypt(b_splits(string), offset_calc.b_offset)
  end

  def c_splits(encrypt.smush(string))
    splitter = string.chars
    c_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 2 }
    c_string.compact.join
  end

  def c_rotated(encrypt.smush(string))
    encrypt(c_splits(string), offset_calc.c_offset)
  end

  def d_splits(encrypt.smush(string))
    splitter = string.chars
    d_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 3 }
    d_string.compact.join
  end

  def d_rotated(encrypt.smush(string))
    encrypt(d_splits(string), offset_calc.d_offset)
  end

  # def smash(string)
  #   smash = []
  #   smash_me = a_rotated(string).chars + b_rotated(string).chars + c_rotated(string).chars + d_rotated(string).chars
  #   smash << smash_me
  #   smashy = smash.flatten
  #   a_smash = []
  #   b_smash = []
  #   c_smash = []
  #   d_smash = []
  #   smashy.each_with_index.map do |smash_mahn, i|
  #     if i % 4 == 0
  #       a_smash << smush_mahn
  #     elsif i % 4 == 1
  #       b_smash << smush_mahn
  #     elsif i % 4 == 2
  #       c_smash << smush_mahn
  #     elsif i % 4 == 3
  #       d_smash << smush_mahn
  #     end
  #   end
  #   smash_master = a_smash + b_smash + c_smash + d_smash
  #   smash_master.flatten
  # end

  def output
    puts "Created -- with the key #{key_gen.key_output} and date #{offset_calc.date_format}."
  end
end

dec = Decrypt.new
puts dec.output
print dec.a_splits("try this string"); puts ""
print dec.a_rotated("try this string")
=======
require_relative 'encrypt'

class Decrypt
  def set_rotation
      encrypt(string, rotation = oc.offset)
  end

  def cipher(rotation)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)].invert
  end

  # def encrypt_letter(letter, rotation = oc.offset)
  #   cipher_for_rotation = cipher(rotation)
  #   cipher_for_rotation[letter]
  # end

  def decrypt(string, rotation = oc.offset)
     letters = string.split("")
     results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
     results.join
   end

   def output
     puts "Created -- with the key #{kg.key_output} and date #{oc.date_format}."
   end
end

# crack
# solve it
# brute force
# rainbow tables
>>>>>>> katy
