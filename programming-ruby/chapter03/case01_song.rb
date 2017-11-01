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


class KaraokeSong < Song

  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  # Format ourselves as a string appendding our lyrics to our parent's #to_s value
  def to_s
    super + " [#@lyrics]"
  end

end

ks = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts ks.to_s
