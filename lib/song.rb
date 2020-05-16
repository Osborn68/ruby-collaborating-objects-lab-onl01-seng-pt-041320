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
      r = Song.new(filename[1])
      r.name = filename[1]
      r.artist_name = filename[0]
      r
    
  end
  
  def artist_name=(artist_name)
    e = Artist.find_or_create_by_name(artist_name)
        e.add_song(self)

  end
end

  
