class KeyGenerator
  attr_reader :key_helper

  def initialize
    @key_helper = generate_key
  end

  def generate_key
    5.times.map{rand(10)}.join
  end

  def a_rotation(a_key = @key_helper)
    a_key[0] + a_key[1]
  end

  def b_rotation(b_key = @key_helper)
    b_key[1] + b_key[2]
  end

  def c_rotation(c_key = @key_helper)
    c_key[2] + c_key[3]
  end

  def d_rotation(d_key = @key_helper)
    d_key[3] + d_key[4]
  end

  def run
    puts @key_helper
    puts a_rotation(a_key = @key_helper)
    puts b_rotation(b_key = @key_helper)
    puts c_rotation(c_key = @key_helper)
    puts d_rotation(d_key = @key_helper)
  end
end
