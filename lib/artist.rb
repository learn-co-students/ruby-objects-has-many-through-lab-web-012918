require 'pry'
class Artist
  attr_reader :name
  attr_accessor :songs
  def initialize(name)
    @songs = []
    @name = name
  end
  def add_song(song)
    song.artist = self
    @songs << song
  end
  def songs
    @songs
  end
  def genres
    @songs.map {|s| s.genre}
  end
end
