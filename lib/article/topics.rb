require 'pry'

class FunnyArticle::Topics 
  attr_accessor :descriptions, :category, :headlines
  
  @@all_hash = {
    :politics => {
      url: 'http://www.theonion.com/section/politics/',
      :article => {} #insert headline/description hash
      },
    :sports => {
      :url => 'http://www.theonion.com/section/sports/',
      :article =>{} #insert headline/description hash
      },
    :local => {
      :url => 'http://www.theonion.com/section/local/',
      :article => {} #insert headline/description hash
      }, 
    :business => {
      :url => 'http://www.theonion.com/section/business',
      :article => {} #insert headline/description hash
      }, 
    :entertainment => {
      :url => 'http://www.theonion.com/section/entertainment/',
      :article => {} #insert headline/description hash
      }, 
    :science_technology => {
      :url => 'http://www.theonion.com/section/science-technology/',
      :article => {} #insert headline/description hash
      }, 
    :after_birth => {
      :url => 'http://www.theonion.com/section/after-birth',
      :article => {} #insert headline/description hash
      }}


   CATEGORIES = [
      'http://www.theonion.com/section/politics/',
      'http://www.theonion.com/section/sports/',
      'http://www.theonion.com/section/local/',
      'http://www.theonion.com/section/business',
      'http://www.theonion.com/section/entertainment/',
      'http://www.theonion.com/section/science-technology/',
      'http://www.theonion.com/section/after-birth']


  def initialize#(category, descriptions, headlines)
    @category = []
    @descriptions = []
    @headlines = [] 
  end 

  # def start
    # @@all.each do |instance|
    #   instance.each do |category|
    #   instance.scrape_details 


  #   all.each.with_index do |cat, i|
  #    puts "#{i+1}. #{cat.category}"
  # end

   def self.find_by_headline_number(num)
    puts @headlines[num.to_i - 1]
    binding.pry
    @@headlines[num.to_i - 1]
  end 

  def self.print_all
    self.scrape_details
    @@all_hash.each.with_index do |topic,index|
      puts "#{index+1}: #{topic}"
    end
  end

  # def self.all
    
  # end 

  def self.scrape_details 
    @@all_hash.each do |topic|
      doc = Nokogiri::HTML(open(topic[1][:url]))

      scrape = doc.css('.large-thing')
      # binding.pry


      scrape.css('h2').collect do |h|
        # binding.pry
        scrape.css('.desc').collect  do |d|
          binding.pry
          topic[1][:article][h.text.strip] = d.text.strip
        end
      end
    end 
  end 
end   


