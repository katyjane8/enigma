module Characters
  
  def cipher(rotation)
    characters = ("a".."z").to_a + (0..9).to_a + (" ".."/").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

<<<<<<< HEAD
  def encrypt_letter(letter, rotation)
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[letter]
  end

=======
>>>>>>> e49ab03f19b04fb8f785f9cdf0602601ad02d0d6
  def encrypt_string(string, rotation)
    letters = string.split("")
    results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
    results.join
  end
end
