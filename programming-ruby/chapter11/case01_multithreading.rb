# Creating Ruby Threads:
# require 'net/http'
# pages = %w( www.rubycentral.com slashdot.org www.google.com )
# threads = []
# for page_to_fetch in pages
#   threads << Thread.new(page_to_fetch) do |url|
#     h = Net::HTTP.new(url, 80)
#     puts "Fetching: #{url}"
#     resp = h.get("/", nil)
#     puts "Got #{url}: #{resp.message}"
#   end
# end
# threads.each{|thread| thread.join}
# in `rescue in block in connect': Failed to open TCP connection to www.rubycentral.com:80 (getaddrinfo: Name or service not known) (SocketError)


# Thread variables:
count = 0
thrs = []
10.times do |i|
  thrs[i] = Thread.new do
    sleep(rand(0.1))
    Thread.current["my_count"] = count
    count += 1
  end
end
thrs.each{|t| t.join
  print t["my_count"], ", "
}
puts "count = #{count}"


# If thread caused exception, what will hasppened? It depends on signal 'abort_on_exception' and signal 'interpreter debug'. If signal 'abort_on_exception' is 'false' and signal 'interpreter debug' has not been started, the exception would kill current thread simply, and the other threads goes on. In fact, except only when 'join' for the thread which caused the exception, you never knew the exception existed.
ths = []
4.times do |number|
  ths << Thread.new(number) do |i|
    raise "Bomb!" if i == 2
    print "#{i}\n"
  end
end
ths.each{|t|
  # When the thread was joined, we can rescue the exception:
  begin
    t.join
  rescue Exception => e
    puts "Failed: #{e.message}"
  end
}


# But, if the signal 'abort_on_exception' was setted as 'true' and the signal 'debug' has been opened, the exception would kill all running threads, since thread 2 exited, there would be no more outputs.
Thread.abort_on_exception = true
ts = []
4.times do |number|
  ts << Thread.new(number) do |i|
    raise "Bomb!" if i == 2
    puts "#{i}\n"
  end
end
ts.each{|t|
  t.join
}
