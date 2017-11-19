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


# For 'mixin', it means that the module you would mix in  class will create instance variable in the class.
module Observable

  def observers
    @observer_list ||= []
  end

  def add_to_observers(obj)
    observers << obj
  end

  def notify_observers
    observers.each{|o| o.update}
  end

end

# Name conflict:
class TelescopeScheduler

  # Other classes can register to get notifications when the shcedule changes
  include Observable

  def initialize
    @observer_list = []
  end

  def add_viewer(viewer)
    @observer_list << viewer
  end

end


# At most times, the 'mixin' modules does not bright their own instance data, they just use access methods to get data from customer objects. But if the 'mixin' you created has to have their own state, ensure the instance variable has the exclusive name to make it different from other 'mixin'. Or, use hash and use the ID of current object as index to save data.
module Test

  State = {}

  def state=(value)
    State[object_id] = value
  end

  def state
    State[object_id]
  end

end

class Client

  include Test

end

c1 = Client.new
c2 = Client.new
c1.state = "dog"
c2.state = "cat"
puts c1.state
puts c2.state
