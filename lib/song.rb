class Song
 attr_reader :name, :artist, :genre

 @@count = 0
 @@artists = []
 @@genres = []
 # @@artist_count = 0
 @@genre_count = {}

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    @@count += 1
    # if @@artists.include?(artist)
    #   return "Already here!"
    # else
    @@artists << @artist
    @@genres << @genre
      # @@artist_count += 1
    # end
    if @@genre_count[@genre]
      @@genre_count[@genre] += 1
    else
      @@genre_count[genre] = 1
      # @@genres << genre
    end
  end

  def self.count
    @@count
  end

  def genres
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    unique_genres
    end
  end

end
