require 'pry'

class FunnyArticle::Topics 
  attr_accessor :descriptions, :category, :headlines, :variable
  
  @@list = [
    {"politics" => 'http://www.theonion.com/section/politics/'},
    {"sports" => nil}, 
    {"local"=> nil}, 
    {"business" => nil}, 
    {"entertainment" => nil}, 
    {"science technology" => nil}, 
    {"after birth" => nil}]

  @@all_hash = [
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
      }]


   CATEGORIES = [
      'http://www.theonion.com/section/politics/',
      'http://www.theonion.com/section/sports/',
      'http://www.theonion.com/section/local/',
      'http://www.theonion.com/section/business',
      'http://www.theonion.com/section/entertainment/',
      'http://www.theonion.com/section/science-technology/',
      'http://www.theonion.com/section/after-birth']


  def initialize(description, headline)
    hash[headline]= description
    @descriptions = []
    @headlines = []
  end 

  #  def self.find_by_headline_number(num)
  #   puts @headlines[num.to_i - 1]
  #   binding.pry
  #   @@headlines[num.to_i - 1]
  # end 

  def self.print_all_topics
    @@all_hash.each.with_index do |topic,index|
      puts "#{index+1}: #{topic[0]}"
    end
  end

  def self.all_hash
    self.scrape_details
    @@collection
  end 

  def self.intake(puts_info)
    @@correct_hash = @@list[puts_info.to_i - 1]
  end

  def self.yield_helper_2
    doc = Nokogiri::HTML(open(@@correct_hash.values[0]))
    scrape = doc.css('.large-thing')
    scrape.css('h2').each do |h|
      yield h.text.strip  
    end
  end


  def self.yield_helper_3
    doc = Nokogiri::HTML(open(@@correct_hash.values[0]))
    scrape = doc.css('.large-thing')
    scrape.css('.desc').each  do |d|
      yield d.text.strip  
    end
  end

  def self.scrape_details
    headers =[]
    descriptions=[]
    @@collection = {}
    yield_helper_2{|h| headers << h}
    yield_helper_3{|d| descriptions << d}

    counter = 0
    while counter < headers.count
      @@collection[headers[counter]] = descriptions[counter]
      counter +=1
    end
  end
end   



