require 'pry'
class Artist

	attr_accessor :name
	attr_reader :songs, :all

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@@all<<self
	end

	def add_song(song_instance)
		@songs<<song_instance
	end

	def save
		@@all<<self
	end

	def self.find_or_create_by_name(artist_name)
		
		artist = self.all.find do |artist_object|
			artist_object.name == artist_name 
		end

		!!artist ? artist : Artist.new(artist_name)
	end

	def self.all
		@@all
	end

	def print_songs
			self.songs.each do |song| puts song.name end
	end

end
