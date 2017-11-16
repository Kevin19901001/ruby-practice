# Handling Exception:
op_file = File.open("opfile_name", "w")
begin
  while data = socket.read(512)
    op_file.write(data)
  end
rescue SystemCallError
  $stderr.print "IO failed " + $!
  op_file.close
  File.delete(opfile_name)
  raise
end


# Tidying up:
file = File.open("testfile")
begin
  # .. process
rescue
  # .. handle error
ensure
  file.close unless file.nil?
end


# else:
f = File.open("testfile")
begin
  # .. process
rescue
  # .. handle error
else
  puts "Congrtulations: no error!"
ensure
  f.close unless f.nil?
end


# Play it again:
@emstp = true
begin
  if @emstp then
    @command.ehlo(helodom)
  else
    @command.helo(helodom)
  end
rescue ProtocolError
  if @emstp then
    @emstp = false
    retry
  else
    raise
  end
end
