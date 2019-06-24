# encoding: gbk

# 2.2制作一个对象：

# 2.2.1 tickect对象，行为优先：
ticket = Object.new()

def ticket.date
  "01/02/03"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price
  5.50
end


# 2.2.2 查询ticket对象：
print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue + ", on "
print ticket.date + ". "
print "The performer is "
print ticket.performer + ". "
print "The seat is "
print ticket.seat + ", "
print "and it cost $"
puts "%.2f." % ticket.price


# 2.2.3 通过字符串插值缩短ticket代码：
print "This ticket is for: #{ticket.event}, at #{ticket.venue}. " + 
"The performer is #{ticket.performer}. " +
"The seat is #{ticket.seat}, " +
"and it costs $#{"%.2f." % ticket.price}"


# 2.2.4 入场券有效性：用方法表达布尔状态：
def ticket.availability_status
  "sold"
end

def ticket.available?
  flase
end

if ticket.available?
  puts "You're in luck!"
else
  puts "Sorry--that seat has been sold."
end