class KeyGenerator
  attr_reader :key_helper

  def initialize
    @key_helper = generate_key
  end

  def generate_key
    5.times.map{rand(10)}.join
  end

  def rotation(key = @key_helper)
    rotated_key = []
    counter = 0
    4.times do
      pre_rotation = key[counter] + key[counter + 1]
      rotated_key << pre_rotation
      counter += 1
    end
    rotated_key
  end

  def key_output
    @key_helper
  end
end

kg = KeyGenerator.new
puts kg.generate_key
puts kg.rotation(key = @key_helper)
