require_relative "./song.rb"

class Artist
    attr_accessor :name
    attr_reader :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self
        @songs << new_song
    end

    def self.song_count
        Song.all.size
    end

end