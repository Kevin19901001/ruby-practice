# Command line
def fib_up_to(n)
  f1, f2 = 1, 1
  while f1 < n
    yield f1
    f1, f2 = f2, f1 + f2
  end
end

# Load ruby file in irb command line
# irb(main):001:0> load 'case01_command_line.rb'
# => true
# irb(main):002:0> result = []
# => []
# irb(main):003:0> fib_up_to(20){|num| result << num }
# => nil
# irb(main):004:0> result
# => [1, 1, 2, 3, 5, 8, 13]
# irb(main):005:0> 


# Tab completion:

# irb(main):007:0> require 'irb/completion'
# irb(main):010:0> class Test
# irb(main):011:1>   def my_method
# irb(main):012:2>   end
# irb(main):013:1> end
# => :my_method
# irb(main):014:0> t = Test.new
# => #<Test:0x00000001426e08>
# irb(main):015:0> t.m
# t.method     t.methods    t.my_method  
# irb(main):015:0> t.m
# t.method     t.methods    t.my_method  
# irb(main):015:0> t.my_method
