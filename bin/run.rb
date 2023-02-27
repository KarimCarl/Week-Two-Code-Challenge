require_relative "../config/environment"
require 'pry'

charles = Author.new("Charles")
jamila = Author.new("Jamila")
fatou = Author.new("Fatuma")
mwanzia = Author.new("Mwanzia")
caleb = Author.new("Caleb")

star = Magazine.new("Star", "Magazine")
readers = Magazine.new("Readers", "Handout")
digest = Magazine.new("Digest", "Magazine")
people = Magazine.new("People", "Handout")

article = Article.new("Tom", star, "Music")
articleR = Article.new("Rei", people, "New Friends")
article2 = Article.new("Russ", digest, "Climb")
articleB = Article.new("Caleb", people, "TM")


binding.pry

