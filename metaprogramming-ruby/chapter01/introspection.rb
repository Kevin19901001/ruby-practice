# Ghost Towns and Marketplaces:
class Greeting

  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end

end

# Runtime introspection:
greeting = Greeting.new("Hello")
p greeting.class				# => Greeting
p greeting.class.instance_methods(false)	# => [:welcome]
p greeting.instance_variables
