# This simple class displays how to access and set object's attributs outside:
class Song
  
  # 'attr_reader' creates these access methos for you:
  attr_reader :name, :artist, :duration

  # Some times, you need to set attributs for an object outside:
  attr_writer :name, :artist, :duration

  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end

end

song = Song.new("Biyclops", "Fleck", 260)

puts song.name	# Fleck

song.name = "Chris"

puts song.name
