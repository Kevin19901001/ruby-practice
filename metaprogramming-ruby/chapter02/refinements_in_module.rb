module StringExtensions

  refine String do
    def reverse
      "esrvevr"
    end
  end

end

module StringStuff

  using StringExtensions

  p "my_string".reverse

end

p "my_string".reverse
