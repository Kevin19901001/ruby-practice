# encoding: gbk

# 2.4 走近方法参数：

# 2.4.1 必选参数和可选参数：
obj = Object .new

def obj.one_arg(x)
  puts "I require one and only one argument!"
end

# obj.one_arg(3, 2, 1)      # ArgumentError

def obj.multi_args(*x)
  puts "I can take zero or more arguments!"
end

def obj.two_or_more(a, b, *c)
  puts "I require two or more arguments!"
  puts "And sure enough, I got: "
  p a, b, c
end

obj.two_or_more(1, 2, 3, 4, 5)


# 2.4.2 参数的默认值：
def default_args(a, b, c=1)
  puts "Value of variables: ", a, b, c
end

default_args(3, 2)
default_args(4, 5, 6)


# 2.4.3 形参和实参的顺序：
#def mixed_args(a, b, *c, d)
#  puts "Arguments: "
#  p a, b, c, d
#end
#
#mixed_args(1, 2, 3, 4, 5)
#mixed_args(1, 2, 3)


# 2.4.4 实际参数列表的错误使用方式：
#def all_optional(*args)       # 必选参数左右都没有参数
#end
  
#def broken_args(a, *y, z=1)   # 这是对于z到底是可选的还是有默认值的会产生混淆
#end

# Ruby不允许在参数列表中出现多于1个的可变参数