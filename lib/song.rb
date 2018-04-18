class Song
  attr_accessor :name, :artist, :genre

  @@all =[]

  def initialize(name, artist=nil, genre=nil)
    self.name = name
    self.artist = artist unless artist=nil
    self.genre = genre unless genre=nil
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end




end
