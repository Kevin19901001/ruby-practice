def say_goodnight(name)
  result = "Good night, " + name + "!"
  return result
end

# Time to bed...
puts say_goodnight("John-Bob")
puts say_goodnight("Mary-Ellen")

# Another thing ruby did for double quote string is "expression interpolation":
def say_goodmorning(name)
  result = "Good morning, #{name.capitalize}!"
  return result
end

# Time to wake up...
puts say_goodmorning("uncle")

# For convenience, if the expression is just a global instance or class variable, the brace is unneeded:
$greeting = "Hello"
@name = "Bob"
puts "#$greeting, #@name"
