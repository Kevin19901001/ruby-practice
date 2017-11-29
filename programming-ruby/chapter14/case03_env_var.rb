# Environment variables.
p ENV["SHELL"]		# => "/bin/bash"
p ENV["HOME"]		# => "/home/kevin"
p ENV["USER"]		# => "kevin"
p ENV.keys.size		# 62
p ENV.keys[0, 7]	# ["XDG_VTNR", "XDG_SESSION_ID", "CLUTTER_IM_MODULE", "XDG_GREETER_DATA_DIR",
                        # "SESSION", "GPG_AGENT_INFO", "SHELL"] 


# Write to enviroment variables:
# A sub process changed a environment variable, and this change would be inherited by the next created
# process, but the super process did not know this change.
puts "In parent, term = #{ENV['TERM']}"			# => In parent, term = xterm-256color
fork do
  puts "Start of child 1, term = #{ENV['TERM']}"	# => Start of child 1, term = xterm-256color
  ENV['TERM'] = "ansi"
  fork do
    puts "Start of child 2, term = #{ENV['TERM']}"	# => Start of child 2, term = ansi
  end
  Process.wait
  puts "End of child 1, term = #{ENV['TERM']}"		# => End of child 1, term = ansi
end
Process.wait
puts "Back in parent, term = #{ENV['TERM']}"		# => Back in parent, term = xterm-256color
