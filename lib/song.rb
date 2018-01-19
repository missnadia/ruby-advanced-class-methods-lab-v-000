class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create(name)
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    self.all.detect {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical(name)
    self.all.sort_by{|song| song.name}
  end

  def self.new_from_filename(filename)
    artist_song = filename.split(" - ")
    artist = artist_song[0]
    title = artist_song[1].gsub(".mp3", "")

    song = self.new
    song.artist = artist
    song.title = title
    song
  end

  def self.create_from_filename(filename)
    artist_song = filename.split(" - ")
    artist = artist_song[0]
    title = artist_song[1].gsub(".mp3", "")

    song = self.new
    song.artist = artist
    song.title = title
    song
  end

  def self.destroy_all
    self.all.clear
  end
end
