require_relative "rotation"

class Encrypt
  def initialize
    @count = 0
  end
  
  def encryption(count)
    if count == 0
      rot.first_rotation
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
