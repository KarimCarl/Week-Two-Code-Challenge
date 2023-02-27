require 'pry'
# require_relative '../config/environment.rb'
# def reload
#     load 'config/environment.rb'
# end

class Article
    #reads our instance variables
    attr_reader :author, :magazine, :title

    #initialized an empty array that will store our pushed items
    @@all  = []

    #initial values for our objects
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all 
    end

end
