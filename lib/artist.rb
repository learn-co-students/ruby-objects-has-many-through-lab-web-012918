require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  # def songs
  #   @songs
  # end

  def genres
    # binding.pry
    @songs.collect {|song| song.genre}
  end

end
