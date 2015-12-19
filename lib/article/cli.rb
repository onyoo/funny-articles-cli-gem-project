require 'pry'

module FunnyArticle
end 

class FunnyArticle::CLI

  def call
    list
  end

  
  def list 
    puts ""
    # binding.pry
    puts "************* Current topics *************"
    # binding.pry  
    FunnyArticle::Topics.print_all_topics
    # puts "#{FunnyArticles::Topics.new.scrape_details}"
     # puts i.headlines
     # puts i.descriptions
    end

    puts ""
  end 

  public
  def begin
    list
    index = nil 
    while index != 'exit'
      puts "Which Topic would you like to read more on? Choose a number please: "
      puts ""
      puts "Enter 'list' to see the list again"
      puts "Enter 'exit' to quit."
      puts ""
      
      FunnyArticle::Topics.intake(gets.strip)
      FunnyArticle::Topics.all_hash.each do |heck_yea|
        puts "#{heck_yea[0]}"
        puts "---------------------------"
      end
      

        
    end
  end 

 