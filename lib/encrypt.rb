require_relative 'offset_calculator'
require_relative 'key_generator'
require_relative 'characters'

class Encrypt
  include Characters

  attr_reader :offset_calc,
              :key_gen,
              :string,
              :rotation

  def initialize(offset_calc = OffsetCalculator.new, key_gen = KeyGenerator.new)
    @offset_calc = offset_calc
    @key_gen     = key_gen
    @rotation    = rotation
  end

  def splits_into_arrays(string)
    splits_array = []
    counter = 0
    4.times do
       splits_array << string.chars.map.with_index do |splits, i|
        splits if i % 4 == counter
      end.compact.join
      counter += 1
    end
    splits_array
  end

  def final_key(string)
    split_array = splits_into_arrays(string)
    offset_the_key = offset_calc.offset_key
    collected_array = []
    counter = 0
    4.times do
      collected_array << encrypt_string(split_array[counter], offset_the_key[counter])
      counter += 1
    end
    collected_array
  end

  def smush(string)
    smush = []
    counter = 0
    4.times do
      smush << final_key(string).map.with_index do |smush_mahn, i|
        smush_mahn if i % 4 == counter
      end
      counter += 1
    end
    smush.compact.join
  end

  def output
    puts "Created -- with the key #{key_gen.key} and date #{offset_calc.date_format}."
  end
end
enc = Encrypt.new
puts enc.output
puts enc.final_key("try this string")
puts enc.smush("try this string")
