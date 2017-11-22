# All methds we used in 'easy' I/O can be used in File object. For example 'gets':
while line = gets
  puts line
end


# Read data from file:
File.open("testfile") do |file|
  while line = file.gets
    puts line
  end
end


# Iterators for reading:
# IO#each_byte:
File.open("testfile") do |file|
  file.each_byte do |ch|
    putc ch; print "."
  end
end


# IO#each_line:
File.open("testfile") do |file|
  file.each_line{|line| puts "Got #{line.dump}"}
end


# IO.foreach:
IO.foreach("testfile"){|line| puts line}


# Read file content into a string or an array:
# Read into a string:
str = IO.read("testfile")
p str.length			# 81
p str[0, 30]			# where there is a river,\nthere 

# Read into an array:
arr = IO.readlines("testfile")
p arr.length			# 4
p arr[0]			# where there is a river
