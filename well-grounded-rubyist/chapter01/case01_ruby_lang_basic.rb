# encoding: gbk

# 1.1Ruby语言基础知识：



# 交互式Ruby控制台程序：irb
# irb --simple-prompt
# >>100 + 30
# =>132



# 1.1.1 Ruby语法生存包：
# ruby的基本运算：
# 算数运算、赋值运算、比较运算、字符串到数字的转换

# 基本I/O和控制流：
# 打印到屏幕、获取键盘单行输入、条件语句执行

# Ruby特殊对象和注释：
# 特殊值对象、默认对象、注释


# 1.1.2. 多种多样的Ruby标识符：
# 变量：
# 局部变量、实例变量、类变量、全局变量

# 常量

# 关键字

# 方法名


# 1.1.3. 方法调用、消息和Ruby对象:
x = "100".to_i


# 1.1.4 编写和保存一个简单程序：
celsius = 100
fahrenheit = (celsius * 9 / 5) + 32
puts "The result is: "
puts fahrenheit
puts "."


# 1.1.5 给Ruby提供程序：
# 1. 检查语法错误：
# >ruby broken_c2f.rb
# >ruby -cw c2f.rb

# 2. 运行程序：
# > ruby c3f.rb

# 3. 温度转换器的第二次迭代：
celsius = 100
fahrenheit = (celsius * 9 / 5) + 32
print "The result is: "
print fahrenheit
puts "."


# 1.1.6 键盘和文件I/O：
# 1. 键盘输入：
print "Hello. Plaese enter a Celsius value: "
celsius = gets
fahrenheit = (celsius.to_i * 9 / 5) + 32
print "The Fahrenheit equicalent is "
print fahrenheit
puts "."

# 2. 读取文件：
puts "Reading Ceksius temprature value from data file..."
num = File.read("H:\\eclipse_workspace\\wellgroundedrubyst\\chapter01\\temp.dat")
sleep 3
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The number is " + num
print "Result: "
puts fahrenheit

# 3. 写入文件：
print "Hello. Please enter a Celsius value: "
celsius = gets.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Saving result to output file 'temp.out'..."
sleep 3
fh = File.new("H:\\eclipse_workspace\\wellgroundedrubyst\\chapter01\\temp.out", "w")
fh.puts(fahrenheit)
fh.close()
puts "Completed!"