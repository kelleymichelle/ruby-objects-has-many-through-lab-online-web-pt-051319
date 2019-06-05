class Genre
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end      

  def artists
    x = []
    Song.all.each do |song|
      if song.genre == self
      x << song.artist
      end
    end
    return x
  end          
  
  def self.all
    @@all
  end  

end  