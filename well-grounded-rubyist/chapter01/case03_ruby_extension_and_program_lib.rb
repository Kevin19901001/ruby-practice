# encoding: gbk

# 1.3 Ruby扩展和编程库：



# 1.3.1 加载外部文件和扩展：
puts "This is the 'load' program file!"
load "H:\\eclipse_workspace\\wellgroundedrubyst\\chapter01\\loadee.rb"
puts "And back again to the 'load' program file!"


# 1.3.2 加载位于默认加载路径中的文件：
puts "Loading unit test..."
load "C:\\Ruby22-x64\\lib\\ruby\\gems\\2.2.0\\gems\\test-unit-3.0.8\\sample\\adder.rb"
puts "Completed!"


# 1.1.3 请求功能：
# 尽管'load'很有用，尤其是当加载多余1个文件的时候。
# 但是'require'是一个日常使用的技术，用于请求Ruby扩展和库，不论是标准库还是第三方库。
# 在irb中演示：
# >>"Kevin Frank".sanf("%s%s")
# >>NoMetodError! Undefined method "scanf" for string "Kevin Frank"
# >>require "scanf"
# >>true
# >>"Kevin Frank".scanf("%s%s")
# >>["Kevin", "Frank"]


# 1.3.4 require_relative指令：
# 这个指令搜索相对于所在文件的目录来加载功能