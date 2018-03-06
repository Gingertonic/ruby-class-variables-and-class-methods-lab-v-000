class Song
 attr_reader :name :artist :genres

 ARTISTS = Array.new
 GENRES = Array.new
 @@artist_count = 0
 @@genre_count = 0

  def initialize(title, artist, genre)
    @name = title
    @artist = artist
    @genre = genre
    if ARTISTS.include?(artist) 
      return "Already here!"
    else
      ARTISTS << artist
      @@artist_count += 1
    end
    if GENRES.include?(genre) 
      return "Already here!"
    else
      GENRES << genre
      @@genre_count += 1
    end
    
        
        
  end
    
  end
end
