# Finding method.
class MyClass

  def my_method
    'my_method'
  end

end

class MySubClass < MyClass

end

obj = MySubClass.new
p obj.my_method

p MySubClass.ancestors
