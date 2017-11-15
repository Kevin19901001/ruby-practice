# Case expressions:
leap = case
         when year % 400 == 0 : true
         when year % 100 == 0 : false
         else year % 4 == 0
       end


case input_line
when "debug"
  dump_debug_info
  dump_symbols
when /p\s+(\w+)/
  dump_variable($1)
when "quit" "exit"
  "exit"
else
  print "illegal command: #{input_line}"
end
