require 'pry'
# class Song
class Song

    attr_accessor :name, :artist, :genre

    # class variable
    @@count = 0
    @@artists = []
    @@genres = []


    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        # increment count of song
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    # We need our Song class to be able to keep track of the number of songs that it creates.
    def self.count
        @@count
    end
    # We need our Song class to be able to show us all of the artists of existing songs:

    # We need our Song class to be able to show us all of the genres of existing songs:
    def self.genres
=begin 
# n =  [1,1,1,2,3,4,5]
Where the number 1 is duplicated.

Calling uniq on this array removes the extra ones & returns a NEW array with unique numbers.

Example:

n.uniq
# [1,2,3,4,5]
=end
        @@genres.uniq
    end

    def self.artists
        artist_count = {}

        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
        
            end
    
        end 
        artist_count
    end


    def self.genres
        @@genres.uniq
      end
    
      def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
      end
        # We also need our Song class to be able to keep track of the number of songs of each genre it creates.
    # Should return something like this;
    # {"rap" => 5, "rock" => 1, "country" => 3} 


    # Lastly, we want our Song class to reveal to us the number of songs each artist is responsible for.
    # Song.artist_count
    # => {"Beyonce" => 17, "Jay-Z" => 40} 
end 

nick = Song.new("nick", "nick", "rock")


binding.pry 
0