# What's in an object.
class MyClass

  def my_method
    @v = 1
  end

end

obj = MyClass.new
p obj.class
obj.my_method
p obj.instance_variables

p obj.methods.grep(/my/)
