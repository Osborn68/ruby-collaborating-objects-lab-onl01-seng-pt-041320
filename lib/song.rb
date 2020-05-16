class Song 
  
  attr_accessor :artist, :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(file)
    artist = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    file_ext = file.split(" - ")[2]
    
    song = Song.new(song_name)
    song.artist_name = artist
    song 
    
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    Artist.add_song(self)
  end 
end