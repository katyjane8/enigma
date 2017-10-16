require_relative 'offset_calculator'
require_relative 'key_generator'
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
