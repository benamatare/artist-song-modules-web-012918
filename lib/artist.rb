require 'pry'

class Artist
  #Spawn an artists, you can read and write their name
  #You can only read their songs
  attr_accessor :name
  attr_reader :songs

extend Memorable::ClassMethods
include Memorable::InstanceMethods
extend Findable
include Paramable
  @@artists = []
  #Store ALL of the spawned artists songs into this class array

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end
    #Look in the class array
    #If the arguement passed matches the value (test passes)
    #give me back that artist


  def initialize
    super
    @songs = []
    #Every artists created will put their name into my class array
    #and have their own array that holds a collection of songs
  end
  #smells funky

  def self.all
    @@artists
    #Call upon the class array with all the artists
  end

  # def self.reset_all
  #   self.all.clear
  #   #clear the artists array
  # end

  # def self.count
  #   @@artists.count
  #   #how many artists are there?
  # end

  def add_song(song)
    @songs << song
    song.artist = self
    #take in a song as an arguement
    #add it to the artists song array
    #the song knows where it came from
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }


    #take in a song as an arguement
    #in the artists songs array

  end

#   def to_param
#     name.downcase.gsub(' ', '-')
# #take the artists name
# #downcase it
# #then and replace spaces with a dash
#   end

end
