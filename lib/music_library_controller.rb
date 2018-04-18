class MusicLibraryController
  attr_accessor :path

  def initialize(path="./db/mp3s")
    @path = path
    music = MusicImporter.new(path)
    music.import
  end

  def call
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
   input = ""
   while input != "exit"
     puts "What would you like to do?"
     input = gets.chomp
     case input
     when "list songs"
       list_songs
     when "list artists"
       list_artists
     when "list genres"
       list_genres
     when "list artist"
       list_artist
     when "list genre"
       list_genre
     when "play song"
       play_song
     when "exit"
       puts "Adios, amigo."
     else
       puts "I don't understand.  Please try again."
   end
 end
 end

 def list_songs

 end

 def list_artists

 end

 def list_genres

 end

 def list_artists

 end

 def list_genres

 end

 def play_song

 end


end
