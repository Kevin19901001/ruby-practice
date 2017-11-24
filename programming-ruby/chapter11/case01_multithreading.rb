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



