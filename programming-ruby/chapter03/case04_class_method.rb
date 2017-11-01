# Class variables are both private for class and it's instance, if you want they can be accessed in outside, you need
# to write access method, this method can be either instance method or class method. Some times, the method which are
# not tied by any specified object are needed for class.
class Example

  def instance_method
    "instance method!"
  end

  def Example.class_method
    "class method!"
  end

end


load "case03_class_variable.rb"
class SongList

  MAX_TIME = 5*60	# 5 minutes

  def SongList.is_too_long(song)
    return song.duration > MAX_TIME
  end

end

song1 = Song.new("Bicyclops", "Fleck", 260)
puts SongList.is_too_long(song1)	# false

song2 = Song.new("The Calling", "Sinatra", 468)
puts SongList.is_too_long(song2)	# true
