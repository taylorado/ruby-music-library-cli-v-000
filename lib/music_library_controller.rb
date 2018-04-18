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
   Song.all.sort_by{|song|song.name}.each_with_index do |song, index|
     puts "#{index+1}. #{song.artist.name} - #{song.name} - #{song.genre.name}"
   end
 end

 def list_artists
   Artist.all.sort_by{|artist|artist.name}.each_with_index do |artist, index|
      puts "#{index+1}. #{artist.name}"
    end
 end

 def list_genres
   Genre.all.sort_by{|genre|genre.name}.each_with_index do |genre, index|
      puts "#{index+1}. #{genre.name}"
    end
 end

 def list_songs_by_artist
   puts "Please enter the name of an artist:"
   artist_selection = gets.chomp
   found_artist = Artist.find_by_name(artist_selection)
   found_artist.songs.sort_by{|song|song.name}.each_with_index do |song, index|
     puts "#{index+1}. #{song.name}"
   end
 end

 def list_songs_by_genre

 end

 def play_song

 end


end
