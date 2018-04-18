class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.entries(path).select{ |file| file.end_with?(".mp3") }

  end

  def import
    self.files.each do |file|
      Song.new_from_filename(file)
    end
  end

end
