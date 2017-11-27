# This is the most rock-bottom way to prevent other threads running, it used global thread-critical
# condition. When the condition was setted as 'true', the dispatcher would never dispatch current t
# hreads to run. But it does not prevent creating and running new thread.
# Monitors:
# class Counter
# 
#   attr_reader :count
# 
#   def initialize
#     @count = 0
#   end

#   def tick
#     @count += 1
#   end

# end

# c = Counter.new

# t1 = Thread.new{ 100_000.times{ c.tick } }
# t2 = Thread.new{ 100_000.times{ c.tick } }

# t1.join
# t2.join

# puts c.count		# Perhaps ruby2.3 is different from ruby 1.8


# require 'monitor'

# class Counter < Monitor

#   attr_reader :count

#   def initialize
#     @count = 0
#     super
#   end

#   def tick
#     synchronize do
#       @count += 1
#     end
#   end

# end

# c = Counter.new

# t1 = Thread.new{100000.times{c.tick}}
# t2 = Thread.new{100000.times{c.tick}}

# t1.join
# t2.join

# puts c.count		# => 200000


# For getting these benefits, it is unneccessary to inherit from class 'Monitor', we can include a mod
# ule - MonitorMixin.
# require 'monitor'
# class Counter

#   include MonitorMixin
#   ...

# end


# If it is neccessary to synchronize a group of objects, a outside monitor is better:
require 'monitor'

class Counter

  attr_reader :count

  def initialize
    @count = 0
  end

  def tick
    @count += 1
  end

end

c = Counter.new
lock = Monitor.new

t1 = Thread.new{ 100000.times{ lock.synchronize{ c.tick } } }
t2 = Thread.new{ 100000.times{ lock.synchronize{ c.tick } } }

t1.join
t2.join

puts c.count
