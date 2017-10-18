module Rotater

  def cipher(rotate = offset_calc.a_offset, string)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotate)
    Hash[characters.zip(rotated_characters)]
  end

  def encrypt_string(string, rotation)
    letters = string.split("")
    results = letters.collect { |letter| encrypted_letter = encrypt_letter(letter, rotation) }
    results.join
  end
end
