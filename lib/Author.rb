require 'pry'
require_relative '../config/environment.rb'


class Author
    #attribute accessor which allow us to access and modify our instance variables 
    attr_reader :name, :articles, :magazines

    def initialize(name)
        @name = name
    end

    def articles
        Article.all.filter do |article|
        article.author == @name
        end
    end

    def magazines
        articles.map{|article|article.magazine}.uniq
    end

    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end

    def topic_areas
        magazines.map{|magazine| magazine.category}.uniq
    end
end
