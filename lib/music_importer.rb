class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    Dir.entries(path).select{ |file| file.end_with?(".mp3") }.sort()

  end

  def import
    self.files.each { |file| Song.create_from_filename(file) }
  end

end
