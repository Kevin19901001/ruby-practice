eval "var = 0"
var
# case04_restriction.rb:2:in `<main>': undefined local variable or method `var' for main:Object (Name
# Error)


# In ruby 2.3, vars in ruby file or irb are both "undefined local variable":
# irb(main):001:0> eval "var = 0"
# => 0
# irb(main):002:0> var
# NameError: undefined local variable or method `var' for main:Object
# 	from (irb):2
# 	from /usr/bin/irb:11:in `<main>'
# irb(main):003:0>
