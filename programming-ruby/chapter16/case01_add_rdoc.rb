# Adding rdoc to ruby code.
=begin rdoc
  First example of rdoc: class Shape.
=end
class Shape

  attr_reader :circle
  attr_writer :circle

  # Initializing...
  def initialize(circle)
    @circle = circle
  end

  # Drawing...
  def draw
    puts "Start to end..."
  end

end
