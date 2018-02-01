class Genre
  attr_accessor :name #making name a getter and setter
  attr_reader :songs #making songs a getter/reader because there is no need to change the song name

  def initialize(name) #forcing user to input a name on creation of a genre
    @name = name #the genre's name
    @songs = [] #the list of songs in a genre
  end

  def add_song(song) #each initialized genre has its own list of songs
    @songs << song #pushing a song into the array
  end

  def artists #returns an array of songs with each artist applied through the Song class
    @songs.collect do |song| #iterating through each song
      song.artist #setting each songs artists through the Song class
    end
  end

end
