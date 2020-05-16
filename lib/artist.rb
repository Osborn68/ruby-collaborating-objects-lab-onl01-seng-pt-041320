class Artist 

attr_reader :name, :songs 
 
@@all = [] 
 
def initialize(name)
  @name = name 
  @@all << self 
end 

def name=(name)
  @name = name
end 

def self.all 
  @@all 
end 

def add_song(song)
  song.artist = self 
end 

def songs 
  Song.all.select {|s| s.artist == self}
end 


end