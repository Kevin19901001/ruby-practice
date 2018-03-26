class C
  puts "Just started class C:"
  puts self
  module M
    puts "Nested module C::M:"
    puts self
  end
  puts "Back in the outer level of C:"
  puts self
end


# self in instance method definition:
class T
  def x
    puts "Class T, method x:"
    puts self
  end
end

t = T.new
t.x
puts "That was a call to x by: #{t}"
