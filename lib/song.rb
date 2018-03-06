class Song
 attr_reader :name, :artist, :genre

 @@count = 0
 @@artists = []
 @@genres = []
 @@artist_count = 0
 @@genre_count = 0

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    @@count += 1
    if @@artists.include?(artist)
      return "Already here!"
    else
      @@artists << artist
      @@artist_count += 1
    end
    if @@genres.include?(genre)
      return "Already here!"
    else
      @@genres << genre
      @@genre_count += 1
    end
  end
end
