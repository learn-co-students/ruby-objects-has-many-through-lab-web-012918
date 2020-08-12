require 'pry'
class Genre
  attr_accessor :songs
  attr_reader :name
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def songs
    @songs
  end
  def artists
    @songs.map {|s| s.artist}
  end
end
