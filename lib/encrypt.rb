require_relative 'offset_calculator'
require_relative 'key_generator'
require_relative 'characters'

class Encrypt
  include Characters

  attr_reader :offset_calc,
              :key_gen,
              :message

  def initialize(offset_calc = OffsetCalculator.new, key_gen = KeyGenerator.new, rotation = @rotation)
    @offset_calc = offset_calc
    @key_gen     = key_gen
    @rotation    = rotation
  end

  def splits_into_sections(message)
    splits_sections = []
    counter = 0
    4.times do
      splits_sections << message.chars.map.with_index do |split, i|
        split if i % 4 == counter
      end.compact.join
      counter += 1
    end
    splits_sections
  end

  def final_key(message)
    split_sections = splits_into_sections(message)
    offset_the_key = offset_calc.offset_key
    collected_sections = []
    counter = 0
    4.times do
      collected_sections << encrypt_string(split_sections[counter], offset_the_key[counter])
      counter += 1
    end
    collected_sections
  end

  def final_rotate(message)
    final_rotations = []
    counter = 0
    4.times do
      final_rotations << final_key(message).map.with_index do |final_rotation, i|
        final_rotation if i % 4 == counter
      end
      counter += 1
    end
    final_rotations.compact.join
  end

  def output
    puts "Created #{ARGV[1]} with the key #{key_gen.key} and date #{offset_calc.date_format}."
  end
end
