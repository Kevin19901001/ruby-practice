class MyClass

  define_method :my_method do |my_arg|
    my_arg * 3
  end

end

my_obj = MyClass.new
p my_obj.my_method(2)
