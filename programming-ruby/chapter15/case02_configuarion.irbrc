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
