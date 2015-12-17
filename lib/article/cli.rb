require 'pry'

module FunnyArticle
end 

class FunnyArticle::CLI

  # def initialize
  #   @categories = 
  # end   

  # def welcome_message
  #   puts "Which Topic would you like to read more on? Choose a number please: "
  #   puts ""
  #   puts "Enter 'list' to see the list again"
  #   puts "Enter 'exit' to quit."
  #   puts ""
    
  # end 

  # def user_input
  #   index = gets.strip
  # end 

  def call
    list
  end

  
  def list 
    puts ""
    # binding.pry
    puts "************* Current topics *************" 
    FunnyArticle::Topics.all.each {|i| puts i}

    puts ""
  end 

  def begin
    list
    index = nil 
    while index != 'exit'
      puts "Which Topic would you like to read more on? Choose a number please: "
      puts ""
      puts "Enter 'list' to see the list again"
      puts "Enter 'exit' to quit."
      puts ""
      index = gets.strip
      # binding.pry 
      if index == 'list'
        list
      elsif condition
          index.to_i > 0 
        # binding.pry
      FunnyArticle::Article.find_by_headline_number(index)

      end  
    end
  end 




end 