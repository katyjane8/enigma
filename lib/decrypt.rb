require_relative 'offset_calculator'
require_relative 'encrypt'

class Decrypt

  def decrypt(string, rotation)
     letters = string.split("")
     results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
     results.join
   end
end
