require_relative 'offset_calculator'
require_relative 'key_generator'
require_relative 'characters'

class Encrypt
  include Characters

  attr_reader :offset_calc,
              :key_gen,
              :string

  def initialize(offset_calc = OffsetCalculator.new, key_gen = KeyGenerator.new, rotation = @rotation)
    @offset_calc = offset_calc
    @key_gen     = key_gen
    @rotation    = rotation
  end

  def a_splits(string)
    splitter = string.chars
    a_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 0 }
    a_string.compact.join
  end

  def a_rotated(string)
    encrypt(a_splits(string), offset_calc.a_offset)
  end

  def b_splits(string)
    splitter = string.chars
    b_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 1 }
    b_string.compact.join
  end

  def b_rotated(string)
    encrypt(b_splits(string), offset_calc.b_offset)
  end

  def c_splits(string)
    splitter = string.chars
    c_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 2 }
    c_string.compact.join
  end

  def c_rotated(string)
    encrypt(c_splits(string), offset_calc.c_offset)
  end

  def d_splits(string)
    splitter = string.chars
    d_string = splitter.each_with_index.map { |splits, i| splits if i% 4 == 3 }
    d_string.compact.join
  end

  def d_rotated(string)
    encrypt(d_splits(string), offset_calc.d_offset)
  end


  def output
    puts "Created -- with the key #{key_gen.key_output} and date #{offset_calc.date_format}."
  end
end
enc = Encrypt.new
oc = OffsetCalculator.new

puts enc.output
print enc.a_splits("try this string"); puts ""
print enc.a_rotated("try this string"); puts ""; puts ""

# print enc.b_splits("try this string"); puts ""
# print enc.b_rotated("try this string"); puts ""; puts ""
#
# print enc.c_splits("try this string"); puts ""
# print enc.c_rotated("try this string"); puts ""; puts ""
#
# print enc.d_splits("try this string"); puts ""
# print enc.d_rotated("try this string"); puts ""; puts ""


# puts "#{enc.a_rotated("try this string") + enc.b_rotated("try this string") + enc.c_rotated("try this string") + enc.d_rotated("try this string")}"
