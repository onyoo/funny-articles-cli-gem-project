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
    # @category = []
    @descriptions =[]
    @headlines =[]
    @@all << self  
  end 

  def self.all
    scrape_details 
    @@all
  end

  def self.cat
    @@all_cat
  end 

  def self.scrape_details 
    TOPICS.each do |url|
      doc = Nokogiri::HTML(open(url))

      @headlines = []
      @descriptions = []
      @category = []
      # category << url.split('/').last
      # @@all_cat << url.split('/').last


      headlines = doc.css('.large-thing')
      descriptions = doc.css('.large-thing')
      
      headlines.css('h2').each {|h| @headlines << h.text.strip }
      descriptions.css('.desc').each {|d| @descriptions << d.text.strip }

      Topic.new(descriptions, headlines)
      binding.pry
  end 
  @@all
    @headlines
    @descriptions
end 
# binding.pry 
end 