# Value of assignment sentence are always the value of argument:
class Test

  def val=(val)
    @val = val
    return 99
  end

end
t = Test.new
a = t.val = 2
p a


# Exchange values of two variables:
x = 1
y = 2
p "x = #{x}"
p "y = #{y}"
x, y = y, x
p "x = #{x}"
p "y = #{y}"


# Short cut:
class Bowdlerize

  def initialize(string)
    @value = string.gsub(/[aeiou]/, "*")
  end

  def +(other)
    Bowdlerize.new(self.to_s + other.to_s)
  end

  def to_s
    @value
  end

end

puts obj = Bowdlerize.new("damn")
puts obj + "shame"
