class Artist
  attr_accessor :name, :songs #setting a getter and setter for name and songs

  def initialize(name) #when calling Artist.new(), you must give the artist a name
    @name = name #makes the instance variable the name that was passed in
    @songs = [] #an array of songs that the Artist sings
  end

  def add_song(song) #adding song to @songs array
    @songs << song #pushing the new song into the array
    song.artist = self #accessing the Song class via the artist method and setting the artist = to the current Artist aka self in the Song class
  end

  def genres #returns each song with it's genre through the Song class
    @songs.collect do |song| # iterating through each song
      song.genre #setting each songs genre
    end
  end

end
