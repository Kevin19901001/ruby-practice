# Enumerable is another standard 'mixin', based on method 'each' in host class, it implemented many methods.
# So, we can use method 'inject' in any class which has included module 'Enumerable' and defined method 'each'.
# Many 'built-in' classes are like this.
puts [1, 2, 3, 4, 5].inject{|v, n| v + n}	# => 15
puts ('a'..'m').inject{|v, n| v + n}		# => abcdefghijklm


# We can define our own class and include 'Enumerable', then we get the support of 'inject':
class VowelFinder

  include Enumerable

  def initialize(string)
    @string = string
  end

  def each
    @string.scan(/[aeiou]/) do |vowel|
      yield vowel
    end
  end

end

vf = VowelFinder.new("the quick brown fox jumped")
puts vf.inject{|v, n| v + n}		# => euiooue


# Use a module to wrap a function:
module Summable

  def sum
    inject{|v, n| v + n}
  end

end

class Array

  include Summable

end

class Range

  include Summable

end

class VowelFinder

  include Summable

end

vf = VowelFinder.new("the quick brown fox jumped")
puts vf.sum		# => euiooue
