class Genre
  attr_accessor :name, :songs

  def initialize (name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.each{|song|
      @artists << song.artist #again what does collect mean
    }
    @artists
  end
end
