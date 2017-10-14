class KeyGenerator

  def initialize
    @key_to_array = generate_key.chars
  end

  def generate_key
    5.times.map{rand(10)}.join
  end

  def a_rotation
    # a_key = generate_key.chars
    @key_to_array
    2.times.map{@key_to_array.shift}.join
  end

  def b_rotation
    @key_to_array
    b_key.shift
    2.times.map{@key_to_array.shift}.join
  end
end
