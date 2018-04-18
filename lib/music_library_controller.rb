class MusicLibraryController
  attr_accessor :path

  def initialize(path="./db/mp3s")
    @path = path
    music = MusicImporter.new(path)
    music.import
  end

  def welcome_instructions
    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
  end


  def call
    welcome_instructions
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
       list_songs_by_artist
     when "list genre"
       list_songs_by_genre
     when "play song"
       play_song
     #when "exit"
      # puts "Welcome to your music library!"
     else
      # puts "I don't understand.  Please try again."
       #welcome_instructions
   end
 end
 end

 def list_songs
   sorted_song_list = Song.all.sort_by(Song.artist.name)
   sorted_song_list.each_with_index {|song,index|puts "#{index+1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}

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
