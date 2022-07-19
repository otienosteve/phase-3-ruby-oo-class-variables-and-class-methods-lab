
require "pry"
class Song
    attr_accessor :name, :artist,:genre
    @@count=0
    @@artists=[]
    @@genres=[]
    @@song=[]
    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@artists<<artist
        @@genres<<genre
        @@song << self
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq!
    end
    def self.genres
        @@genres.uniq!
    end
    def self.genre_count
        obj={}
        lstd=[]
        @@genres.each do |genre|
       
        # binding.pry
        if lstd.include?(genre)
            obj[genre]=obj[genre]+=1
        else
            obj[genre]=1
        end
        lstd<<genre
        
        end
        obj
       end
    def self.artist_count
        @@artists
    end
end