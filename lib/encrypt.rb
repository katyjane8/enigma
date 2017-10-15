require_relative 'rotation'
require 'pry'

class Encrypt
  attr_accessor :key, :offset

  def initialize
    @count = 0
  end

  def hash_zip(rotation)
    characters = ("a".."z").to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end

  def encryption(count)
    if count == 0
      hash_zip(first_rotation)
      count += 1
    elsif count == 1
      rot.second_rotation
      count += 1
    elsif count == 2
      rot.third_rotation
      count += 1
    elsif count == 3
      rot.fourth_rotation
      count += 1
    else
      @count = 0
      encryption(count)
    end
  end

end
rot = Rotation.new
