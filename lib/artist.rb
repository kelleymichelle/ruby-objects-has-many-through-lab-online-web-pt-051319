require 'pry'
class Artist
  @@all = []
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
    # binding.pry
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    new_song = Song.new(song_name, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    x = []
    Song.all.each do |song|
      if song.artist == self
        x << song.genre
      end
    end  
    return x
  end    
 

end  