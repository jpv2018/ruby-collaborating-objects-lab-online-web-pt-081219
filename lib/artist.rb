class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song
    Song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find(name)
    @@all.detect {|artist_name| artist_name.name == name} 
  end
    
  def find_or_create_by_name(name)
    
  end
end