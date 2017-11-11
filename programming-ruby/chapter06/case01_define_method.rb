# Define methods:
# Method with args:
def my_new_method(arg1, arg2, arg3)
  # Codes here...
end

# Method with no args:
def my_new_method

end

# Method with default argument value:
def cool_dude(arg1 = 10, arg2 = 20, arg3 = 30)
  "#{arg1}, #{arg2}, #{arg3}"
end
puts cool_dude("HaHa")
puts cool_dude(100, 50)
puts cool_dude(100, 50, 10)


# Variable-Length Argument Lists:
def varargs(arg1, *rest)
  "Got #{arg1} and #{rest.join(', ')}"
end
puts varargs("one")			# Got one
puts varargs("one", "two")		# Got one and two
puts varargs("one", "two", "three")	# Got one and two, three


# Methods and Blocks:
def take_block(p1)
  if block_given?
    yield(p1)
  else
    p1
  end
end
puts take_block("no block")				# no block
puts take_block("no block"){|s| s.sub(/no /, "")}	# block


# Block to Proc object:
class TaxCalculator
  
  def initialize(name, &block)
    @name = name
    @block = block
  end

  def get_tax(amount)
    "#@name on #{amount} = #{@block.call(amount)}"
  end

end
tc = TaxCalculator.new("Sales Tax"){|amt| amt * 0.075}
puts tc.get_tax(100)
puts tc.get_tax(250)
