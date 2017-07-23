class Song
 	attr_accessor :name, :artist
 	#attr_reader :artist

 	def initialize(song_name)
 		@name = song_name
 	end

 	# def artist=(artist)
 	# 	artist = Artist.find_or_create_by_name(artist)
	# 	song_artist.add_song(self)
 	# 	song_artist
 	# end

 	def self.new_by_filename(file_name)
 		split_file = file_name.split(/-/)
 		song = Song.new(split_file[1].strip)
		song.artist = Artist.find_or_create_by_name(split_file[0].strip.gsub(".mp3", ""))
 		song.artist.add_song(song)
 		song
 	end

 end
