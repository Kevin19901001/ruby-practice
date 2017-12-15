#!/usr/bin/ruby
require 'cgi'

COOKIE_NAME = "chocolate chip"

cgi = CGI.new
values = cgi.cookies[COOKIE_NAME]

if values.empty?
  msg = "It looks as if you haven't visited recently."
else
  msg = "Youlast visited #{values[0]}"
end

cookie = CGI::Cookie.new(COOKIE_NAME, Time.now.to_s)
cookie.expires = Time.now + 30 * 24 * 3600
cgi.out("cookie" => cookie){msg}


# Sessions
require 'cgi'
require 'cgi/session'

cgi = CGI.new("html4")
session = CGI::Session.new(cgi, "session_key" => "ruby web", "prefix" => "web-session.")

if session["lastaccess"]
  msg = "<p>You were last here #{session['lastaccess']}.</p>"
else
  msg = "<p>Looks like you haven't been here for a while.</p>"
end

count = (session['accesscount'] || 0).to_i
count += 1

msg << "<p>Number of visits: #{count}</p>"

session['accesscount'] = count
session['lastaccess'] = Time.now.to_s
session.close

cgi.out {
  cgi.html{
    cgi.body{
      msg
    }
  }
}
