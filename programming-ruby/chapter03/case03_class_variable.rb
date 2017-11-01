# Class variable:
class Song
  
  @@plays = 0

  attr_reader :name, :artist, :duration

  attr_writer :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  def play
    @plays += 1
    @@plays += 1
    "#@name--This song: #@plays plays. Total #@@plays plays"
  end

end

song1 = Song.new("song1", "a", 123)
song2 = Song.new("song2", "b", 234)

puts song1.play
puts song2.play

puts song2.play
puts song2.play
