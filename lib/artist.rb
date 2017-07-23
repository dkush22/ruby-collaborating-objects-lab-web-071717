class Artist
	attr_accessor :name

 	@@all = []

 	def initialize(art_name)
 		@name = art_name
 		@songs = []
 	end

 	def songs
 		@songs
 	end

 	def add_song(song)
 		@songs << song
 	end

 	def save
 		self.class.all << self
	self
 	end

 	def self.all
 		@@all
 	end

 	def self.find_or_create_by_name(artist_name)
		artist = all.find { |object| object.name == artist_name}
 		if artist
 			artist
 		else
			artist = Artist.new(artist_name)
 			artist.save
 		end
 	end

 	def print_songs
 		self.songs.each do |song|
 			puts song.name
 		end
	end


 end
