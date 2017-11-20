# Include other files.
a = "cat"
b = "dog"
require_relative 'included.rb'
puts a
puts b
puts b()


# Because 'load' will include source file without any conditin, you can use it to reload a source file which might be changed after the application ran.
5.times do |i|

  File.open("temp.rb", "w") do |f|
    f.puts "module Temp"
    f.puts "  def Temp.var"
    f.puts "    #{i}"
    f.puts "  end"
    f.puts "end"
  end
  load 'temp.rb'
  puts Temp.var

end
