# Variable scope, Loops and Blocks:
# [1, 3, 5, 7, 9].each do |x|
#   y = x + 1
# end
# puts [x, y]	# undefined local variable or method `x' for main:Object (NameError)


x = nil
y = nil
[1, 2, 3].each do |x|
  y = x + 1
end
p [x, y]
