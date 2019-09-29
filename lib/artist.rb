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
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find(name)
    @@all.detect {|artist_name| artist_name.name == name} 
  end
  
  def self.create(name)
    Artist.new(name)
  end
    
  def self.find_or_create_by_name(name)
    if self.find(name)
        self.name
    else self.create(name)
    end
  end
  
  def print_songs
    self.songs.each {|song| print song}
  end
  
end