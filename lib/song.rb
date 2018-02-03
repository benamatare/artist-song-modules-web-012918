require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist
  #everytime i create a song i can read and write its name
  #but i can only read the artist name and cannot make any changes
  @@songs = []
#keep an array of all the songs I create

  def initialize
    self.class.all << self
    #everytime i make a song
    #push that song into the class array songs
  end
  #smells funky

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end
    #given a name
    #look in my songs array
    #find me the matching songs


  def artist=(artist)
    @artist = artist
    #the artist name can be rewritten?
  end

  def self.reset_all
    @@songs.clear
    #clear my class songs arrray
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  #   #take my song name, and replace spaces with dashes?
  # end

  def self.count
    self.all.count
    #count
  end

  def self.all
    @@songs
  end
end
