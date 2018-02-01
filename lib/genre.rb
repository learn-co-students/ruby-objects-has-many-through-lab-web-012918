class Genre

@@all = []

attr_accessor :name, :artist, :songs

def initialize(name)
	@name = name
	@songs = []

end

def self.all
	@@all
end

def add_song(song)
	@songs << song
end

def songs
	@songs
end

def artists
	self.songs.map{|s| s.artist}
end

end
