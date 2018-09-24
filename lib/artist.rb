class Artist
	attr_reader :songs
	attr_accessor :name
	@@all = []
	def initialize(name)
		@name = name
		@songs = []
	end

	def save
		@@all << self
	end

	def add_song(song)
		@songs << song
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		artist = all.find { |a| a.name == name }
		if !!artist
			artist
		else 
			Artist.new(name)
		end
	end

	def print_songs
		@songs.each { |song| puts song.name }
	end
end