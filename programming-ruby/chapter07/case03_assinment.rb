# Value of assignment sentence are always the value of argument:
class Test

  def val=(val)
    @val = val
    return 99
  end

end
t = Test.new
a = t.val = 2
p a
