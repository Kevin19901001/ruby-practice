# Use a simple example class to test class, object and variable:
class Song

  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end
  
  def to_s
    "Song: #@name--#@artist (#@duration)"
  end

end

song = Song.new("Bicyclops", "Fleck", 260)
puts song.inspect
p song.inspect

p song.to_s
