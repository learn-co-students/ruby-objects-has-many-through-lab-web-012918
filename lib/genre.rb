class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  # def add_song(song)
  #   song = Song.all_songs.find {|object| object.song == song
  #     return object}
  #   song.genre = self
  # end

  def artists
      @songs.collect do |song|
      song.artist
    end
  end

end
