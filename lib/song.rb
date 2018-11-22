require 'pry'

class Song

    attr_accessor :name, :genre, :artist

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
      @name = name
      @genre = genre
      @artist = artist
      @@count += 1
      @@genres << genre
      @@artists << artist
    end

    def name
      @name
    end

    def genre
      @genre
    end

    def artist
      @artist
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
      count_array = []
      self.genres.each do |element|
        count_array << @@genres.find_all{|genre| element == genre}.length
      end
      self.genres.zip(count_array).to_h
    end

    def self.artist_count
      count_array = []
      self.artists.each do |element|
        count_array << @@artists.find_all{|artist| element == artist}.length
      end
      self.artists.zip(count_array).to_h
    end

end
