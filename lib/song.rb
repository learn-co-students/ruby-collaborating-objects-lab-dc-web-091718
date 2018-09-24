class Song
  attr_accessor :name, :artist

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
    file_name = file_name.split(" - ")
    artist = Artist.find_or_create_by_name(file_name[0])
    artist.save
    song = Song.new(file_name[1], artist)
    artist.add_song(song)
    song
  end
end