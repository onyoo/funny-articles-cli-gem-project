

class FunnyArticle::Article
  attr_accessor :correct_hash

  def initialize(article_hash)
    @@article_hash = article_hash
  end

  def self.filter
    self.scrape_details
    @collection  
  end 

  def self.yield_helper_2
    doc = Nokogiri::HTML(open(@@article_hash.values[0]))
    scrape = doc.css('.large-thing')
    scrape.css('h2').each do |h|
     
      yield h.text.strip  
    end
  end

  def self.yield_helper_3
    doc = Nokogiri::HTML(open(@@article_hash.values[0]))
    scrape = doc.css('.large-thing')
    scrape.css('.desc').each  do |d|
      yield d.text.strip  
    end
  end

  def self.scrape_details
    headers =[]
    descriptions=[]
    @collection = {}
    yield_helper_2{|h| headers << h}
    yield_helper_3{|d| descriptions << d}

    counter = 0
    while counter < headers.count
      @collection[headers[counter]] = descriptions[counter]
      counter +=1
    end
  end

  def self.intake_article(puts_info)
    if puts_info == 'exit'
      end_now
    else 
    doc = Nokogiri::HTML(open(@@article_hash.values[0]))
    article_links = []
    doc.css('.large-thing h2 a').map do |link| 
      article_links << "http://www.theonion.com" + "#{link['href']}"
    end 
    url = article_links[puts_info.to_i - 1]
    new_doc = Nokogiri::HTML(open(url))
    
    new_doc.css('.content-text p').text
    end 
  end

  def end_now
    puts "GoodBye!!!" 
    exit
  end 
end