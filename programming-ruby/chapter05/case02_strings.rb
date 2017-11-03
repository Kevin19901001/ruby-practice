# Strings:
puts 'escape using "\\"'		# escape using "\"
puts 'That\'s right!'			# That's right!

puts "Seconds/day: #{24*60*60}"		# Seconds/day: 86400
puts "#{'Ho! '*3}Marry Christmas!"	# Ho! Ho! Ho! Marry Christmas!


# Code inserted to replace can be one or more than one line:
puts "Now is #{
  def the(a)
    'the ' + a
  end
  the("time")
} for all good coders..."		# Now is the time for all good coders...


# %q and %Q:
puts %q/general single-quoted string/	# general single-quoted string
puts %Q!general double-quoted string!	# general double-quoted string
puts %Q{Seconds/day: #{24*60*60}}	# Seconds/day: 86400


# Use 'here document' to create string:
string = <<END_OF_STRING
  The body of string is the input lines up to one ending with the same text that followed the '<<'
END_OF_STRING
puts string
