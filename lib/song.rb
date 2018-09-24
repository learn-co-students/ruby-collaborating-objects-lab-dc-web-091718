class Song
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		info = filename.split(" - ")
		song = Song.new(info[1])
		song.artist = Artist.new(info[0])
		song.artist.add_song(song)
		song.artist.save


		song
	end
end