class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = Hash[@@genres.uniq.collect { |genre| [genre, ""] }]
    hash.each do |key, value|
      hash[key] = @@genres.count(key)
    end
  end

  def self.artist_count
    hash = Hash[@@artists.uniq.collect { |artist| [artist, ""] }]
    hash.each do |key, value|
      hash[key] = @@artists.count(key)
    end
  end
end
