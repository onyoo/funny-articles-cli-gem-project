# require 'pry'
# class FunnyArticle::Article

#   # attr_accessor :categories, :headlines, :descriptions 

#   @@headlines = []
#   @@categories = []
#   @@descriptions = []

#   def initialize
#   end 

#   def self.categories
#     @@categories
#   end 

#   def self.descriptions
#     @@descriptions
#   end 

#   def self.headlines
#     @@headlines
#   end 

#   def find_by_headline_number(num)
#     puts FunnyArticle::Topics.headlines[num.to_i - 1]
#     @@headlines[num.to_i - 1]
#   end 

#   def description_by_number(num)
#     puts @@descriptions[num.to_i -1]
#     @@descriptions[num.to_i -1]
#   end

#   # def self.scrape_articles

#   #   topics = [
#   #     'http://www.theonion.com/section/politics/',
#   #     'http://www.theonion.com/section/sports/',
#   #     'http://www.theonion.com/section/local/',
#   #     'http://www.theonion.com/section/business',
#   #     'http://www.theonion.com/section/entertainment/',
#   #     'http://www.theonion.com/section/science-technology/',
#   #     'http://www.theonion.com/section/after-birth']

#   #     topics.each do |url|
#   #     @@categories << url.split('/').last
#   #   end 

#   #   topics.each do |url|
#   #   doc = Nokogiri::HTML(open(url))

#   #   headlines = doc.css('.large-thing')
#   #   descriptions = doc.css('.large-thing')
#   #   # binding.pry
#   #   headlines.css('h2').each {|h| @@headlines << h.text.strip }
#   #   descriptions.css('.desc').each {|d| @@descriptions << d.text.strip }
#   # end 
#   #   binding.pry
#   #  # puts @@categories
#   # end
# end 

# # subjects.each_with_index |i, name|
# # subjects.each do |subject|
# # @@categories << subject
# # end\


#     # subjects = topics[index.to_i-1].split('/').last
#     #  @@categories << subjects


# # FunnyArticle::Article.new.scrape_article(1)
# # FunnyArticle::Article.new.scrape_article(2)
# # FunnyArticle::Article.new.scrape_article(3)

# # doc.css('.large-thing').css('.inner').css('.headline').css('h2').text    #These are for the headlines. 

# # doc.css('.large-thing').css('.inner').css('.desc').text  # These are the descriptions of the articles