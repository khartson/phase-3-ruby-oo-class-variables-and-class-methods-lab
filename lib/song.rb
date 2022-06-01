class Song
    @@count       = 0 
    @@genres      = []
    @@genre_count
    @@artists     = []
    @@artist_count

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    def initialize(name, artist, genre)
        @name    = name
        @artist  = artist 
        @genre   = genre
        @@count += 1
        @@artists.push(artist)
        @@genres = @@genres.push(genre)
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
        @@genre_count = @@genres.tally
        @@genre_count
    end

    def self.artist_count
        @@artist_count = @@artists.tally
        @@artist_count
    end
end