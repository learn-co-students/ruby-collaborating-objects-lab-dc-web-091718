require 'pry'

class Mp3_Importer

	attr_accessor :path
	
	def initialize(path)
		@path = path
	end

	def files
		Dir.glob("#{self.path}/**/*").map { |full_path|
			full_path.split("/")[-1]
			}
	end

	def import
		Dir.glob("#{self.path}/**/*").each do |song_file|
			Song.new_by_filename(song_file.split("/")[-1])
		end
	end
end


