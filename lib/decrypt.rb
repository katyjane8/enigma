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

    while key_answer.class != Integer && key_answer.to_s.length != 5
      puts "Please enter a valid five digit numeric key."
      key_answer = gets.chomp
    end
    puts "You have entered the key: #{key_answer}."
  end

  def what_is_the_date_offset
    puts "Please enter the Date (DDMMYY)."
    date_answer = gets.chomp

    while date_answer.to_s.length != 6 && date_answer.class != Integer
      puts "Please enter a valid six digit numeric date in DDMMYY format."
      date_answer = gets.chomp
    end
    puts "You have entered the date: #{date_answer}."
  end
end



smush = Decrypt.new
smush.what_is_the_key_code
