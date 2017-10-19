class KeyGenerator
  attr_reader :key

  def initialize(key = 5.times.map{rand(10)}.join)
    @key = key
  end

  def rotation
    key = @key.to_s.chars
    rotated_key = []
    counter = 0
    4.times do
      pre_rotation = key[counter] + key[counter + 1]
      rotated_key << pre_rotation
    end
    rotated_key
  end
end
