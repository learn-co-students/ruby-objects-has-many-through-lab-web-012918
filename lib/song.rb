class Song
  attr_accessor :artist, :name, :genre #setting getter and setter methods

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) #a new song gets associated to a genre and the given genre adds that to the Genre class' song collection
  end

end
