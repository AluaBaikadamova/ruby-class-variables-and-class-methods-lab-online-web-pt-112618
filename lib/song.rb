class Song
  attr_accessor :name, :count, :artist, :genre, :artists, :genres 
  @@count=0
  @@genres=[]
  @@artists=[]
  @@genre_count={}
  @@artist_count={}
  
  def initialize (name,artist,genre)
   
    @name=name
    @genre=genre
    @artist=artist
       @@genres[@@count]=genre
   @@artists[@@count]=artist
      
 @@count += 1
   
  end
 
  def self.count
    @@count
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
  def self.genres
  @@genres.shift
 # unique = names.uniq
  return @@genres
end
  def self.artists
  @@artists.shift
  return @@artists
end
  def self.genre_count
   @@genres.each { | v | @@genre_count.store(v, @@genre_count[v]+1) }

  end
  
   def self.artist_count
   
@@artist_count= Hash[@@artists.collect { |v| @@artist_count[v] += 1}]

  end
end