# Mix in:
# Module has no instance, because that module is not class. But, you can include a module in class definition.
# Since the including happened, the instance methods can ben used in class at the moment. They have been mixed in.
# In fact, the action of the mixed module is like a super class.
module Debug

  def who_i_am?
    "#{self.class.name} (\##{self.object_id}): #{self.to_s}"
  end

end

class Phonograph

  include Debug

  def initialize(s)
    @s = s
  end

  def to_s
    @s
  end

end

class EightTrack

  include Debug

  def initialize(s)
    @s = s
  end

  def to_s
    @s
  end

end

ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

puts ph.who_i_am?
puts et.who_i_am?

# By including 'Debug' module, both 'Phonograph' and 'EightTrack' can access to instance method 'who_i_am?'!


# Comparable mix in
class Song

  include Comparable

  attr_reader :name, :artist, :duration
  attr_writer :name, :artist, :duration

  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end

  def <=>(other)
    self.duration <=> other.duration
  end

end

song1 = Song.new("My Way", "Sinatra", 225)
song2 = Song.new("Bicyclops", "Fleck", 260)

puts song1 < song2	# => true
puts song1 <=> song2	# => -1
puts song1 == song1	# => true
puts song1 > song2	# => false
