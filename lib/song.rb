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
      @@genres << genre
      # @@artist_count += 1
    # end
    if @@genres.include?(genre)
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
      # @@genres << genre
    end
  end
end
