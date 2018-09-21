class Song
 
  attr_accessor :name, :artist
  
  @@all=[]
  def initialize(name)
    @name=name
    @@all << self
    @artist=nil
  end
  
  
  def self.new_by_filename(filename)
    song=self.new(filename.split(' - ')[1].split('.')[0])
    song.artist=Artist.find_or_create_by_name(filename.split(' - ')[0])
    song.artist.songs << self
    song
  end
  def self.new_from_filename(filename)
    song=self.new(filename.split(' - ')[1].split('.')[0])
    song.artist=Artist.find_or_create_by_name(filename.split(' - ')[0])
    song
  end
  
  
  def artist_name
   return @artist.name if @artist
   nil
  end
 
end