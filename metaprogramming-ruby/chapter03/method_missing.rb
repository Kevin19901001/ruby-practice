class Lawyer

end

nick = Lawyer.new
# nick.talk_simple

# method_missing function:
nick.send :method_missing, :my_method 
