# Implementing a song list container:
class SongList
  
  def initialize
    @songs = Array.new
  end

  def append(song)
    @songs.push(song)
    self
  end

  def delete_first
    @songs.shift
  end

  def delete_last
    @songs.pop
  end

  def [](index)
    @songs[index]
  end

end

class Song

  attr_reader :name, :artist, :duration

  attr_writer :name, :artist, :duration

  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
  end

end
