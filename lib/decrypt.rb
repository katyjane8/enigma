require_relative 'offset_calculator'
require_relative 'key_generator'
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



  def what_is_the_key_code
    puts "Please enter the Key."
    key_answer = gets.chomp
    guess = fetch_guess(key_answer)
    puts "You have entered the key: #{guess}."

    # puts "Please enter the Date (DDMMYY)."
    # date_answer = gets.chomp
    #
    # until date_answer.num_digits == 6 && date_answer.class == Integer
    #   puts "Please enter a valid six digit numeric date in DDMMYY format."
    #   date_answer = gets.chomp
    # end
    # return puts "You have entered the date: #{date_answer}."
    #
    # date_answer ** 2
    # convert_offset = date_squared.to_s.chars
    # convert_offset[-4, 4]

end
  end

  def calculate_final_key
    offset_calc.date_squared
    offset_calc.date_array

# key -> rotation
# offset -> square -> array -> key
# key + key -> final_key
# split string into array
# final_key in reverse rotate (rotated) char map
# smush
# output decrypted key


end

def fetch_guess(key_answer)
  until valid_guess?(key_answer)
    puts "Please enter a valid five digit numeric key."
    key_answer = gets.chomp
  end
  key_answer
end

def valid_guess?(key_answer)
  key_answer.to_i.class == Integer && key_answer.to_i.to_s.length == 5
end



smush = Decrypt.new
smush.what_is_the_key_code
