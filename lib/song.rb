class Song
  attr_accessor :name, :artist, :genre

  def initialize(artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.add_song(self) #Why is the add song method here? Not in Genre class
  end
end
