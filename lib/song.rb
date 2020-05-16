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
  
  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    file_ext = filename.split(" - ")[2]
    
    song = Song.new(song_name)
    song.artist = artist
    song 
    
  end
  
end 
