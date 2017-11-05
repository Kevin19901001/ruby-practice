class Song

  attr_reader :title, :name, :length
  attr_writer :title, :name, :legnth

  def initialize(title, name, length)
    @title  = title
    @name   = name
    @length = length
  end

  def to_s
    "song: #@title--#@name (#@length)"
  end

end

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

  # def with_title(title)
  #   for i in (0..@songs.length)
  #     return @songs[i] if title == @songs[i].name
  #   end
  #   return nil
  # end

  # Use Array#find:
  def with_title(title)
    @songs.find{|song| song.name == title}
  end


end

File.open("songdata") do |song_file|
  songs = SongList.new
  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    # Use 'String#squeeze!(s)' to delete redundant blank:
    name.squeeze!(" ")
    songs.append(Song.new(title, name, length))
  end
  puts songs[0]
end
