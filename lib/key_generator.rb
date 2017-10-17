class KeyGenerator
  attr_reader :key_helper

  def initialize
    @key_helper = generate_key
  end

  def generate_key
    5.times.map{rand(10)}.join
  end

  def a_rotation(key = @key_helper)
    a_rot = key[0] + key[1]
    a_rot.to_i
  end

  def b_rotation(key = @key_helper)
    b_rot = key[1] + key[2]
    b_rot.to_i
  end

  def c_rotation(key = @key_helper)
    c_rot = key[2] + key[3]
    c_rot.to_i
  end

  def d_rotation(key = @key_helper)
    d_rot = key[3] + key[4]
    d_rot.to_i
  end

  def key_output
    @key_helper
  end
end
