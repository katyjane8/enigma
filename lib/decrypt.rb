require_relative 'offset_calculator'
require_relative 'key_generator'
require_relative 'encrypt'

class Decrypt

  def decrypt(string, rotation)
     letters = string.split("")
     results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
     results.join
   end

   def output
     puts "Created -- with the key #{kg.key_output} and date #{oc.date_format}."
   end
end
