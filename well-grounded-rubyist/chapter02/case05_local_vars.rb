# encoding: gbk

# 2.5 局部变量和变量赋值：
def say_goodbye
  x = "Goofbye"
  puts x
end

def start_here
  x = "Hello"
  puts x
  say_goodbye
  puts "Let's check whether x remained the same:"
  puts x
end

start_here


# 2.5.1 变量、对象和引用
def say_hello
  str = "Hello"
  abc = str
  str.replace("Goodbye")
  puts str
  puts abc
end

say_hello


# 2.5.2 变量赋值和重新赋值中的引用
str = "Hello"
abc = str
str = "Goodbye"
puts str
puts abc


# 2.5.3 引用和方法参数：
def change_string(str)
  str.replace("New string content!")
end

s = "Original string content!"

change_string(s)

puts s

# 从上面的例子可以看到，在change_string方法的内部，
# 变量str被分配了一个由s指向的字符串的引用。
# 当携带参数进行方法调用的时候，对象引用的确进行了替换。
# 而一旦方法已经持有了该引用，当通过它的引用测试任何对象时，
# 任何改变都可以通过对象的引用展现出来。


# 2.5.4局部变量及类似的事物：
# 当出现一个普通的标识符时，Ruby如何处理：
# （1）假如标识符是一个关键字，它就是一个关键字；
# （2）假如在标识符右边有一个等号，，这是对局部变量的一个赋值过程；
# （3）其他情况，标识符被假定为一次方法调用