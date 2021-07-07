class Artist
  attr_reader :name, :songs
  def initialize(name)
    @name= name
    @genres = []
    @songs= []
  end

  def add_song(name)
    @songs << name
    name.artist = self
    @genres << name.genre
  end

  def genres
    @genres
  end
end
