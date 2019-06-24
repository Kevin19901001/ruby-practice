# encoding: gbk

# 2.3 对象原生行为：

p Object.new.methods.sort     # 返回一个将方法名自然排序后的数组


# 2.3.1 用object_id方法唯一标识对象：
obj = Object.new
puts "The id of obj is #{obj.object_id}."
str = "Strings are object too, and this is a string!"
puts "The id of String object str is #{str.object_id}."
puts "And the id of integer 100 is #{100.object_id}."

a = Object.new
b = a
puts "a's object id is #{a.object_id} and b's object id is #{b.object_id}."
puts a == b


# 2.3.2 用respond_to?方法查询对象的能力：
object = Object.new()
#obj.talk                      # NoMethodError

if object.respond_to?("talk")
  object.talk
else
  puts "Sorry, the object doesn't understand the 'talk'message."
end


# 2.3.3 用send方法发送信息给对象：
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

print "Information desired: "
request = gets.chomp
#if request == "venue"
#  puts ticket.venue
#elsif request == "performer"
#  puts ticket.performer
#end

if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts "No such information available."
end