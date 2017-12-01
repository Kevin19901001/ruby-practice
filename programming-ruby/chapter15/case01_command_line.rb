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


# Subsessions:
# irb(main):001:0> require_relative 'case01_command_line.rb'
# => true
# irb(main):002:0> result = []
# => []
# irb(main):003:0> fib_up_to(10){ |val| result << val }
# => nil
# irb(main):004:0> result
# => [1, 1, 2, 3, 5, 8]
# irb(main):005:0> # Create a nested irb session
# irb(main):006:0* irb
# irb#1(main):001:0> result = %w{ cat dog horse }
# => ["cat", "dog", "horse"]
# irb#1(main):002:0> result.map{ |val| val.upcase }
# => ["CAT", "DOG", "HORSE"]
# irb#1(main):003:0> jobs
# => #0->irb on main (#<Thread:0x00000001c7e1a0>: stop)
# #1->irb#1 on main (#<Thread:0x00000001e87190>: running)
# irb#1(main):004:0> fg 0
# => #<IRB::Irb: @context=#<IRB::Context:0x00000001e82118>, @signal_status=:IN_EVAL, @scanner=#<RubyLex:0x00000001e73988>>
# irb(main):007:0> jobs
# => #0->irb on main (#<Thread:0x00000001c7e1a0>: running)
# #1->irb#1 on main (#<Thread:0x00000001e87190>: stop)
# irb(main):008:0> fg 1
# => #<IRB::Irb: @context=#<IRB::Context:0x00000001e87028>, @signal_status=:IN_EVAL, @scanner=#<RubyLex:0x00000001e86c18>>
# irb#1(main):005:0> jobs
# => #0->irb on main (#<Thread:0x00000001c7e1a0>: stop)
# #1->irb#1 on main (#<Thread:0x00000001e87190>: running)
# irb#1(main):006:0> fg 0
# => #<IRB::Irb: @context=#<IRB::Context:0x00000001e82118>, @signal_status=:IN_EVAL, @scanner=#<RubyLex:0x00000001e73988>>
# irb(main):009:0> result
# => [1, 1, 2, 3, 5, 8]
# irb(main):010:0> fg 1
# => #<IRB::Irb: @context=#<IRB::Context:0x00000001e87028>, @signal_status=:IN_EVAL, @scanner=#<RubyLex:0x00000001e86c18>>
# irb#1(main):007:0> result
# => ["cat", "dog", "horse"]
# irb#1(main):008:0> 


# Subsessions and bindings:
# irb#1(main):008:0> self
# => main
# irb#1(main):009:0> irb "wombat"
# irb#2(wombat):001:0> self
# => "wombat"
# irb#2(wombat):002:0> upcase
# => "WOMBAT"
# irb#2(wombat):003:0> size
# => 6
# irb#2(wombat):004:0> gsub(/[aeiou]/, "*")
# => "w*mb*t"
# irb#2(wombat):005:0> irb_exit
# => #<IRB::Irb: @context=#<IRB::Context:0x00000001e87028>, @signal_status=:IN_EVAL, @scanner=#<RubyLex:0x00000001e86c18>>
# irb#1(main):010:0> self
# => main
# irb#1(main):011:0> jobs
# => #0->irb on main (#<Thread:0x00000001c7e1a0>: stop)
# #1->irb#1 on main (#<Thread:0x00000001e87190>: running)
# irb#1(main):012:0> upcase
# NameError: undefined local variable or method `upcase' for main:Object
# 	from (irb#1):12
# irb#1(main):013:0> 
