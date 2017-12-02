# Configuration:
# Initialization file:
IRB.conf[PROMPT_MODE] = SIMPLE
IRB.conf[:IRB_RC] = proc do
  leader = " " * conf.irb_name.length
  conf.prompt_i = "#{ conf.irb_name } --> "
  conf.prompt_s = leader + ' \-" '
  conf.prompt_c = leader + ' \-+ '
  conf.return_format = leader + " ==> %s\n\n"
  puts "Welcome!"
end


# Extending irb:
def ri(*names)
  System(%{ri #{names.map{|name| name.to_s}.join(" ")}})
end


# Interactive configuration:
# irb(main):001:0> 1 + 
# irb(main):002:0* 2
# => 3
# irb(main):004:0> conf.prompt_mode = :SIMPLE
# => :SIMPLE
# >> 1 +
# ?> 2
# => 3
# >>  class A
# >>    def say
# >>      puts "Hello"
# >>    end
# >> end
# => :say
# >> a = A.new
# => #<A:0x00000001ea7148>
# >> a.say
# Hello
# => nil
# >> conf.prompt_mode = :DEFAULT
# => :DEFAULT
# irb(main):015:0> 
