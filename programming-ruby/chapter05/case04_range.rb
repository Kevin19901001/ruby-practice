# Range has many methods to let us iterate them:
# Range as sequence:
digits = 0..9
puts digits.include?(5)
puts digits.min
puts digits.max
puts digits.reject{|d| d < 5}

class VU

  include Comparable

  attr :volume

  def initialize(volume)
    @volume = volume
  end

  def inspect
    #' * @volume
  end

  # Support for ranges
  def <=>(other)
    self.volume <=> other.volume
  end

  def succ
    raise(IndexError, "Volume too big") if @volume >= 9
    VU.new(@volume.succ)
  end

end

midium_volume = VU.new(4)..VU.new(7)
p midium_volume.to_a
p midium_volume.include?(VU.new(3))
