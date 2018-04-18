class MusicLibraryController
  attr_accessor :path

  def initialize(path="./db/mp3s")
    @path = path
    music = MusicImporter.new(path)
    music.import
  end

  def call
   input = ""
   while input != "exit"
     puts "What do you want to do?"
     input = gets.chomp
   end
 end

end
