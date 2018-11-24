class Song
  attr_accessor :name, :artist

  @@all = []

  def artist_name
    if artist
      artist.name
    else
      nil
    end
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new(name)
    song = Song.new(name)
    song
  end

  def self.all
    @@all
  end

end
