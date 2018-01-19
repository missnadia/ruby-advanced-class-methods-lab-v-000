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
    song.name = name
    @@all << song
  end

  def new_by_name

  end

  def create_by_name

  end

  def self.find_by_name(name)
    self.all.detect {|song| song.name == name}
  end
end
