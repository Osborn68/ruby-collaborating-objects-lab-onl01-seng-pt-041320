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
    filename = file.split(" - ")
      s = Song.new(filename[1])
     # s.name = filename[1]
      s.artist_name = filename[0]
      s
    
  end
  
  def artist_name=(artist_name)
    e = Artist.find_or_create_by_name(artist_name)
        e.add_song(self)

  end
end

  
