class Artist
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  def new_song(name,genre)
    Song.new(name,self,genre)
  end
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  def genres
    songs.map do |song_obj|
      song_obj.genre
    end
  end
end
