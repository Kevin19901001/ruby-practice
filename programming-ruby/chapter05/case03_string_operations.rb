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
    @index = WordIndex.new
  end

  def append(song)
    @songs.push(song)
    @index.add_to_index(song, song.title, song.name)
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

  def lookup(word)
    @index.lookup(word)
  end

  # Define an iterator:

end

class WordIndex

  def initialize
    @index = {}
  end

  def add_to_index(obj, *phrases)
    phrases.each{|phrase|
      phrase.scan(/\w[-\w']+/) do |word|
        word.downcase!
        @index[word] = [] if @index[word].nil?
        @index[word].push(obj)
      end
    }
  end

  def lookup(word)
    @index[word.downcase]
  end

end

# Read lines from file:
File.open("songdata") do |song_file|
  songs = SongList.new
  song_file.each do |line|
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    # Use 'String#squeeze!(s)' to delete redundant blank:
    name.squeeze!(" ")

    # Use 'String#split(/pattern/|s)' to split a string:
    # mins, secs = length.split(/:/)

    # Use 'String#scan" to split a string:
    mins, secs = length.scan(/d+/)

    songs.append(Song.new(title, name, mins.to_i*60 + secs.to_i))
  end
  puts songs[2]
  puts songs[0]

  puts songs.lookup("Fats")
  puts songs.lookup("ain't")
  puts songs.lookup("Red")
  puts songs.lookup("WorLD")
end
