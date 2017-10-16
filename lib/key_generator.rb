class KeyGenerator
  attr_reader :key_helper

  def initialize
    @key_helper = generate_key
  end

  def generate_key
    5.times.map{rand(10)}.join
  end

  def a_rotation(a_key = @key_helper)
    a_rot = a_key[0] + a_key[1]
    a_rot.to_i
  end

  def b_rotation(b_key = @key_helper)
    b_rot = b_key[1] + b_key[2]
    b_rot.to_i
  end

  def c_rotation(c_key = @key_helper)
    c_rot = c_key[2] + c_key[3]
    c_rot.to_i
  end

  def d_rotation(d_key = @key_helper)
    d_rot = d_key[3] + d_key[4]
    d_rot.to_i
  end

  def key_output
    @key_helper
  end
end
