# Methods return values:
def method_one
  "one"
end
puts method_one		# one

def method_two(arg)
  if arg > 0
    "positive"
  elsif arg < 0
    "negative"
  else
    "zero"
  end
end
puts method_two(23)	# positive
puts method_two(0)	# zero

# Method returns an array:
def method_three
  100.times do |num|  
    square = num*num
    return num, square if square > 1000
  end
end
p method_three


# Spliting array in method calling:
def five(a, b, c, d, e)
  "I was passed #{a}, #{b}, #{c}, #{d}, #{e}"
end
puts five(*(11..15).to_a)		# I was passed 11, 12, 13, 14, 15
