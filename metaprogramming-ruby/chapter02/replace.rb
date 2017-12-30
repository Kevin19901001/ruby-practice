# The Problem With Open Class
def replace(array, original, replacement)
  array.map{|e| e == original ? replacement : e}
end

require 'test/unit'

class TestReplace < Test::Unit::TestCase
  def test_replace
    original = ['one', 'two', 'one', 'three']
    replaced = replace(original, 'one', 'zero')
    assert_equal ['zero', 'two', 'zero', 'three'], replaced
  end
end


class Array

  def substitude(original, replacement)
    self.map{|e| e == original ? replacement : e}
  end

end

require 'test/unit'

class TestReplace < Test::Unit::TestCase
  def test_substitude
    original = ['one', 'two', 'one', 'three']
    replaced = original.substitude("one", "zero")
    assert_equal ['zero', 'two', 'zero', 'three'], replaced
  end
end
