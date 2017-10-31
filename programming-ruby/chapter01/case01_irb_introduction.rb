#
def sum(n1, n2)
  n1 + n2
end

sum(3, 4)

sum('cat', ', dog')

class Addition
  
  def add(n1, n2)
    n1 + n2
  end

end

class Number
  
  def Number.out(n1, n2)
    n1 - n2
  end

end

puts sum(10, 5)
