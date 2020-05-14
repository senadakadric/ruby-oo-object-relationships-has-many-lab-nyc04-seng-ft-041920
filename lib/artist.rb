
class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        
        #setting an instance variable, songs, equal to an empty array upon initialization of the artist
        #its empty because our artist doesnt have any songs yet
        @songs = []
    end

    #we need to write a method that adds songs to an artist's collection when they make a new song
    def add_song(song)
        #this method takes in an argument of a song name and associates that song w/ the artist by telling the song that it belongs to the artist
        # @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
    end

    #we can call on an individual artist to return the list of sings that the artist has
    def songs
        Song.all
    end

    def self.song_count
        Song.all.length
    end


end