

class FunnyArticle::Article

  def initialize(article_hash)
    @@article_hash = article_hash 
    @@article_links = []
    Nokogiri::HTML(open(article_hash.values[0])).css('.large-thing h2 a').map do |link| 
      @@article_links << "http://www.theonion.com" + "#{link['href']}"
    end
  end

  def self.filter
    scrape_details
    @collection  
  end 

  def self.yield_helper_2
    Nokogiri::HTML(open(@@article_hash.values[0])).css('.large-thing h2').each do |h|
      yield h.text.strip  
    end
  end

  def self.yield_helper_3
    Nokogiri::HTML(open(@@article_hash.values[0])).css('.large-thing .desc').each  do |d|
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

  def self.return_article(puts_info)
    if puts_info == 'exit'
      end_now
    end 
    url = @@article_links[puts_info.to_i - 1]
    Nokogiri::HTML(open(url)).css('.content-text p').text 
  end

  def end_now
    puts "GoodBye!!!" 
    exit
  end 
end