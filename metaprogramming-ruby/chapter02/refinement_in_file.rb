module StringExtensions

  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, "")
    end
  end

end

# "my *1st* refinement".to_alphanumeric	# => undefined method `to_alphanumeric' for "my *1st* refinement"

using StringExtensions

p "my *1st* refinement".to_alphanumeric
