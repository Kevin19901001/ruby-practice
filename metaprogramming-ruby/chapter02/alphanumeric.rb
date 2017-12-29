# Open class:
def to_alphanumeric(s)
  s.gsub(/[^\w\s]/, "")
end


# Unit test:
require 'test/unit'

class ToAlphanumericTest < Test::Unit::TestCase

  def test_strip_non_alphanumeric_characters
    assert_equal "3 the Magic Number", to_alphanumeric("#3 the *Magic, Number*?")
  end

end


# Open class 'String' and define a method 'to_alphanumeric':
class String

  def to_alphanumeric
    gsub(/[^\w\s]/, "")
  end

end


# Unit test:

require 'test/unit'
class StringExtensionTest < Test::Unit::TestCase

  def test_strip_non_alphanumeric_characters
    assert_equal "3 the Magic Number", "#3 the *Magic, Number*?".to_alphanumeric
  end

end


# Inside Class Definitions:
3.times do
  class C
    puts "Hello"
  end
end


# If it is meaning that there are three classes have been defined in the above codes? The answer is no.
# Just try this:
class D
  def x
    'x'
  end
end

class D
  def y
    'y'
  end
end

obj = D.new
puts obj.x
puts obj.y

# When class 'D' is mentioned first time, there is no class 'D', then Ruby defined class 'D' and method 
# 'x'.When class 'D' was mentioned second time, class 'D' exists, Ruby just open class 'D' and defined m
# ethod 'y' for class 'D'. The 'class' keyword just bring you to the class context and let you define me
# thod for it.
