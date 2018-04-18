class Song
  attr_accessor :name, :artist, :genre

  extend Concerns::Findable::ClassMethods
  
  @@all =[]

  def initialize(name, artist=nil, genre=nil)
    self.name = name
    self.artist = artist unless artist.nil?
    self.genre = genre unless genre.nil?
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = Song.new(name)
    song.save
    song
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end



end
