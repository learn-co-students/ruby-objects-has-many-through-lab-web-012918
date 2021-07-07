class Genre
  attr_reader :name, :songs

  def initialize(genre)
    @name = genre
    @songs = []
    @artists = []
  end

  def add_songs(song)
    @song = song
    @songs << song
  end

  def artists
    @artists << @song.artist
  end
end
