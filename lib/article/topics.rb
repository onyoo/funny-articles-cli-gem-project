require 'pry'

class FunnyArticle::Topics 
  attr_accessor :descriptions, :category, :headlines, :all_cat
  
  @@all = []
  @@all_cat = []

   TOPICS = [
      'http://www.theonion.com/section/politics/',
      'http://www.theonion.com/section/sports/',
      'http://www.theonion.com/section/local/',
      'http://www.theonion.com/section/business',
      'http://www.theonion.com/section/entertainment/',
      'http://www.theonion.com/section/science-technology/',
      'http://www.theonion.com/section/after-birth']


  def initialize
    @descriptions =[]
    @category = []
    @headlines =[]
  @@all << self  
  end 

  def self.all 
    @@all 
  end

  def self.cat
    @@all_cat
  end 

  def scrape_details 
   

    TOPICS.each do |url|
    doc = Nokogiri::HTML(open(url))

    @category << url.split('/').last
    @@all_cat << url.split('/').last

    headlines = doc.css('.large-thing')
    descriptions = doc.css('.large-thing')
    # binding.pry
    topics.headlines =headlines.css('h2').each {|h| @headlines << h.text.strip }
    topics.descriptions =descriptions.css('.desc').each {|d| @descriptions << d.text.strip }
  end 
end 
# binding.pry q 
end 