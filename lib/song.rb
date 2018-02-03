class Song

  attr_accessor :title, :genre, :artist

  # @@all = []

  def initialize(title, genre)
    @title = title
    @genre = genre
    genre.add_song(self)

    # genre.songs << self
    # pop.songs ......... [] << new_song
    # @@all << song
  end

end
