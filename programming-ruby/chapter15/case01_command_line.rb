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

