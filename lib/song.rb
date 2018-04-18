class Song
  attr_accessor :name, :artist, :genre

  @@all =[]

  def initialize(name, artist=nil, genre=nil)
    self.name = name
    self.artist = artist unless artist=nil
    self.genre = genre unless genre=nil
  end

end
