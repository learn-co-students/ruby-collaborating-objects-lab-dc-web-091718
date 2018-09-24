
class MP3Importer
	
	attr_reader :path

	def initialize(path)
		@path = path
	end

	def files
		files = Dir[@path  + "/*"]
		files.collect do | path|
			path.split("/").last
		end
	end

	def import
		files = self.files
		files.each do | filename|
			Song.new_by_filename(filename)
		end
	end
end