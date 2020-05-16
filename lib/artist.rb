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

def self.find_or_create_by_name(name)
   self.all.find {|a| a.name == name} || self.new(name)
end 

def print_songs 
  Song.all.select {|s| puts s.name}
end


end