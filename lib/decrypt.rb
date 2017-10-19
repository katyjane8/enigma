require_relative 'offset_calculator'
require_relative 'key_generator'
require_relative 'characters'
require_relative 'encrypt'

class Decrypt
  include Characters

  attr_reader :offset_calc,
              :key_gen

  def initialize(offset_calc = OffsetCalculator.new, key_gen = KeyGenerator.new, rotation = @rotation)
    @offset_calc = offset_calc
    @key_gen     = key_gen
    @rotation    = rotation
  end

  def what_is_the_key_code
    puts "Please enter the Key."
    key_answer = gets.chomp
    guess = fetch_guess(key_answer)
    puts "You have entered the key: #{guess}."
  end

  def fetch_key(key_answer)
    until valid_key?(key_answer)
      puts "Please enter a valid five digit numeric key."
      key_answer = gets.chomp
    end
    key_answer
  end

  def valid_key?(key_answer)
    key_answer.to_i.to_s.length == 5
  end

  def rotation(key_answer)
    key = fetch_key(key_answer)
    rotated_key = []
    counter = 0
    4.times do
      pre_rotation = key[counter] + key[counter + 1]
      rotated_key << pre_rotation.to_i
      counter += 1
    end
    rotated_key
  end

  def what_is_the_date
    puts "Input a date in DDMMYY format."
    date_answer = gets.chomp
    date = fetch_date(date_answer)
    puts "You have entered the date: #{date}"
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

  def date_squared(date_answer)
    fetch_date(date_answer) ** 2
  end

  def date_last_four(date_squared)
    convert_offset = date_squared.to_s.chars
    convert_offset[-4, 4]
  end

  # def offset_key
  #   complete_key = []
  #   counter = 0
  #   4.times do
  #     offset_rotation = key_gen.rotation[counter] + date_last_four[counter].to_i
  #     complete_key << offset_rotation
  #     counter += 1
  #   end
  #   complete_key
  # end
end

smush = Decrypt.new
p smush.rotation(12345)
p smush.date_squared(131017)
p smush.date_last_four(17165454289)
