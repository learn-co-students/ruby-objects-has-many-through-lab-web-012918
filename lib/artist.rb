class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    #artist knows it's songs
    @songs << song
    song.artist = self
  end

  def genres
    #artist knows it's genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
