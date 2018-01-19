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
    song = self.new_by_name
    song.name = name
    song
  end

  def self.create_by_name(name)

  end

  def self.find_by_name(name)
    self.all.detect {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
  end

  def self.alphabetical(name)

  end

  def self.new_from_filename(name)
    artist_song = name.collect do |titles|
      data = titles.split(" - ")
      artist = data[0]
      title = data[2]
      song = self.new
      song.artist = artist
      song.title = title
      song
    end
    artist_song
  end

  def self.create_from_filename(name)
  end

  def self.destroy_all
    @@all.clear
  end
end
