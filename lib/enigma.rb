# > require './lib/enigma'
# > e = Enigma.new
# > my_message = "this is so secret ..end.."
# > output = e.encrypt(my_message)
# => # encrypted message here
# > output = e.encrypt(my_message, "12345", Date.today) #key and date are optional (gen random key and use today's date)
# => # encrypted message here
# > e.decrypt(output, "12345", Date.today)
# => "this is so secret ..end.."
# > e.decrypt(output, "12345") # Date is optional (use today's date)
# => "this is so secret ..end.."
# > e.crack(output, Date.today)
# => "this is so secret ..end.."
# > e.crack(output) # Date is optional, use today's date
# => "this is so secret ..end.."
#
require_relative 'key_generator'
require_relative 'offset_calculator'


class Enigma
  attr_accessor :key, :oc

  def initialize(oc = OffsetCalculator.new)
    @counter = 0
    @characters = ("a".."z").to_a
    @oc = oc
  end

  def hash_zip(rotation = oc.offset)
    rotated_characters = @characters.rotate(rotation)
    Hash[@characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter, rotation)
    cipher_for_rotation = hash_zip(rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(message, key = @key, date = @date)
    offset = OffsetCalculator.new(key.to_i, date)
    hash_zip(rotation = oc.offset)
    message.chomp
    encrypted = message
    length = message.length
    def find_a_rot
      counter = 0
      while counter < message.length
        encrypted[counter] = rotate(message[counter], @a_rot)
        counter += 4
      end
    end

    def find_b_rot
      counter = 1
      while counter < message.length
        encrypted[counter] = rotate(message[counter], @b_rot)
        counter += 4
      end
    end

    def find_c_rot
      counter = 2
      while counter < message.length
        encrypted[counter] = rotate(message[counter], @c_rot)
        counter += 4
      end
    end

    def find_d_rot
      counter = 3
      while counter < message.length
        encrypted[counter] = rotate(message[counter], @d_ro)
        counter += 4
      end
    end
    encrypted
  end

end
