# Raising exceptions:
raise
raise "missing name!" if name.nil?
if i > names.size
  raise IndexError, "#{i} >= size (#{names.size})"
end
raise ArgumentError, "name too big", caller
raise ArgumentError, "name too big", caller[1..-1]


# Adding information to exception:
class RetryException < RuntimeError
  attr: ok_to_retry
  def initialize(ok_to_retry)
    @ok_to_retry = ok_to_retry
  end
end

def read_data(socket)
  data = socket.read(512)
  if data.nil?
    raise RetryException.new(true), "transient read error"
  end
  # normal process...
end

begin
  stuff = read_data(socket)
  # normal process...
raise RetryException => detail
  retry if detail.ok_to_retry
  raise
end
