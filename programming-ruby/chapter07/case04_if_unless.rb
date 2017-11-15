# If and Unless expressions:
File.foreach("/etc/fstab") do |line|

  next if line =~ /^#/			# skip comment
  parse(line) unless line =~ /^$/	# Don't parse empty lines

end


if artist == "Jhon Coltrane"
  artist = "trane"
end unless use_nicknames == "no"
