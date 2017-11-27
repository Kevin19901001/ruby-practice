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

# puts c.count		# => 200000 (Perhaps ruby2.3 is different from ruby 1.8)


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

puts c.count		# => 200000


# Even, the specific object can be put in a monitor:
# require 'monitor'

# class Counter

#   # as before

# end

# c = Counter.new
# c.extend(MonitorMixin)

# t1 = Thread.new{ 100000.times{ c.synchronize{ c.tick } } }
# t1 = Thread.new{ 100000.times{ c.synchronize{ c.tick } } }

# t1.join
# t2.join

# puts c.count		# => 200000


# Condition variables:
require 'monitor'

SONGS = ['Blue Suede Shoes', 'Take Five', 'Bye Bye Love', 'Rocl Around The Clock', 'Ruby Tuesday']

START_TIME = Time.now

def timestamp
  (Time.now - START_TIME).to_i
end

# Wait for up to two minutes between customer requests
def get_customer_request
  sleep(120 * rand)
  song = SONGS.shift
  puts "#{timestamp}: Requesting #{song}" if song
  song
end

# Songs take between two and three minutes
def play(song)
  puts "#{timestamp}: Playing #{song}"
  sleep(120 + rand*60)
end

ok_to_shutdown = false

plays_pending = playlist.new_cond

# Customer request thread:
customer = Thread.new do
  loop do
    req = get_customer_request
    break unless req
    playlist.synchronize do
      playlist << req
      plays_pending.signal
    end
  end
end

# Player thread:
player = Thread.new do
  loop do
    song = nil
    playlist.synchronize do
      break if ok_to_shutdown && playlist.empty?
      plays_pending.wait_while{ playlist.empty? }
      song = playlist.shift
    end
    break unless song
    play(song)
  end
end

customer.join
ok_to_shutdown = true
player.join
