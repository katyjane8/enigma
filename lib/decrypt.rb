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
  end

  def what_is_the_date
    puts "Input a date in DDMMYY format."
    date_answer = gets.chomp
    date = fetch_date(date_answer)
    puts "You have entered the date: #{date}"
  end

  #   date_answer ** 2
  #   convert_offset = date_squared.to_s.chars
  #   convert_offset[-4, 4]
  # end

# key -> rotation
# offset -> square -> array -> key
# key + key -> final_key
# split string into array
# final_key in reverse rotate (rotated) char map
# smush
# output decrypted key




def fetch_guess(key_answer)
  until valid_guess?(key_answer)
    puts "Please enter a valid five digit numeric key."
    key_answer = gets.chomp
  end
  key_answer
end

def valid_guess?(key_answer)
  key_answer.to_i.to_s.length == 5
end

def fetch_date(date_answer)
  until valid_date?(date_answer)
    puts "Please enter a valid six digit numeric date in DDMMYY format."
    date_answer = gets.chomp
  end
  date_answer
end

def valid_date?(date_answer)
  date_answer.to_i.to_s.length == 6
end
end
smush = Decrypt.new
smush.what_is_the_date
