class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path=path
    
  end

  def files
    Dir["#{path}/*"].map{|el| el.split('mp3s/')[1]}
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
  end
end
