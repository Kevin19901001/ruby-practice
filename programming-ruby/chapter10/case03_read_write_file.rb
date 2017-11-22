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
