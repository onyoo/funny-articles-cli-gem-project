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
    FunnyArticle::Topics.print_all
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
    # binding.pry
    while index != 'exit'
      puts "Which Topic would you like to read more on? Choose a number please: "
      puts ""
      puts "Enter 'list' to see the list again"
      puts "Enter 'exit' to quit."
      puts ""
      index = gets.strip
      # binding.pry 
      FunnyArticle::Topics.all[index - 1]
      if index == 'list'
        list
      elsif index.to_i > 0
           
        # binding.pry
      FunnyArticle::Topics.find_by_headline_number(index)

      end  
    end
  end 

 