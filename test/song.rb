class Song 
  attr_accessor :artist, :name, :genre 
  @@all = []
  
  def initialize (name, genre)
    @name = name
    @genre = genre
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def artist_name
    self.artist.name
  end
end

class Artist
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    song. all.select {|song| song.artist == self}
  end
  
  def add_song_by_name(name, genre)
    song = Song.new(name,genre)
    add_song(song)
  end
  
end

kiki = song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")
drake = Artist.new("Drake")

kiki.artist = Drake
kiki.artist.name

drake = Artist.new("Drake")
drake.add_song("In My Feelings")
drake.add_song("Hotline Bling")
drake.songs

kiki = song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")
drake.add_song(kiki)
drake.add_song(hotline)

drake.songs.collect do |song| song.genre
end