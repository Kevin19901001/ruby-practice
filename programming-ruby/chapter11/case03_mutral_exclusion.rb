# This is the most rock-bottom way to prevent other threads running, it used global thread-critical
# condition. When the condition was setted as 'true', the dispatcher would never dispatch current t
# hreads to run. But it does not prevent creating and running new thread.
# Monitors:
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

t1 = Thread.new{ 100_000.times{ c.tick } }
t2 = Thread.new{ 100_000.times{ c.tick } }

t1.join
t2.join

puts c.count
