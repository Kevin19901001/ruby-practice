Y = "A root-level constant"

module M
  
  Y = "A constant in M"

  class C
    X = 'a constant'
  end
  
  p C::X

end

p M.constants


# Module.nesting
module M

  class C
  
    module M2
      p Module.nesting
    end

  end

end
