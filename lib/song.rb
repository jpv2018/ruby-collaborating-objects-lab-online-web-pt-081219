class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << name
  end
  
  def self.all 
    @@all
  end
  
  def new_by_filename
    
end