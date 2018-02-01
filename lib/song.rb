class Song
  attr_reader :name, :genre
  attr_accessor :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_songs(self)
  end

  def add_to_genre

  end
end
