# You can use File.new to create a new file:
file = File.new("testfile", "r")
file.each do |line|
  puts line
end
file.close
