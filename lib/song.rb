class Song

	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file_name)
		arr = file_name.split(" - ")
		song = Song.new(arr[1])
		song.artist = Artist.new(arr[0])
		song.artist.add_song(song)
		song

	end
end	