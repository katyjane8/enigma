class KeyGenerator

  def generate_key
    5.times.map{rand(9)}.join
  end

  def a_rotation
    a_key = generate_key.chars
    2.times.map{a_key.shift}.join
  end

  # def b_rotation
  #   b_key = generate_key.chars
  #   b_key.shift
  #   2.times.map{b_key.shift}.join
  # end
end
