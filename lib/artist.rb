class Artist
  attr_accessor :name, :songs
  @@all=[]
  def initialize(name)
    @name=name
    @songs=[]
    save
  end

  
    def add_song(song)
    @songs << song
    song.artist=self
  end

  def save
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    r=@@all.find{|el| el.name==name}
    return r if r
    r=Artist.new(name)
  end



  def print_songs
    @songs.each{|el| puts el.name}
  end
end
