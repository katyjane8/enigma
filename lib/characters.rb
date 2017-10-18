<<<<<<< HEAD
module Characters

  def cipher(rotation)
    characters = ("a".."z").to_a + (0..9).to_a + (" ".."/").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt_string(string, rotation)
    letters = string.split("")
    results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
    results.join
  end
end
=======
module Rotater

  def cipher(rotate = offset_calc.a_offset, string)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotate)
    Hash[characters.zip(rotated_characters)]
  end

end 
>>>>>>> katy
