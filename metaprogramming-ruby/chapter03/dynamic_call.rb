class MyClass

  def my_method(arg)
    arg * 3
  end

end

obj = MyClass.new
p obj.my_method(3)

# Dynamic dispatch:
p obj.send(:my_method, 4)
