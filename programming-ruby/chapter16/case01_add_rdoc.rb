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

  # Extract the age and calculate the date of birth.
  #--
  # FIXME: fails if the birthday falls on Febrary 29th or
  # if the person was born before epoch and the installed
  # Ruby doesn't support negative time_t
  #++
  # The dob is returned as a time object.
  #--
  # But should probabaly change to use Date.
  def dob(person)

  end

  # Lists are typed as indented paragraphs with
  # * a * or - (for bullet lists),
  # * a digit followed by a period for numbered lists,
  # * an upper or lower case letter followed by a period for alpha lists.
  def list

  end

  # Mark up
  # <tt>--output</tt> <i>name [, name]</i>::
  #     specify the name of one or more output files. If multiple
  #     files are present, the first was uses as index.
  # <tt>--quiet:</tt>::  do not output the names, sizes, byte counts,
  #                      index areas, or bit ratios of units as
  #                      they are processed.
  def mark_up

  end

end
