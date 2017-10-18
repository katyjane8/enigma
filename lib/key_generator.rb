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
    i = 0
    4.times do
      pre_rotation = key[i] + key[i + 1]
      rotated_key << pre_rotation.to_i
      i += 1
    end
    rotated_key
  end

  def key_output
    @key_helper
  end
end
