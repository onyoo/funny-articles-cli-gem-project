
module FunnyArticle
end 

class FunnyArticle::CLI

  def call
    list
  end

  def list 
    puts ""
    puts "************* Current topics *************" 
    FunnyArticle::Topics.print_all_topics
    puts ""
  end 

  public
  def begin_now
    list
    index = nil 
    while index != 'exit' || Integer
      puts "Which Topic would you like to read more on? Choose a number please: "
      puts ""
      puts "Enter 'exit' to quit."
      puts ""
      
      FunnyArticle::Topics.intake(gets.strip)
      FunnyArticle::Article.filter.each.with_index do |title_descript, i|
        puts "#{i+1}: #{title_descript[0]}"
        puts ""
        puts "Description: #{title_descript[1]}"
        puts "---------------------------"
      end
      puts ""
      puts "Which article would you like to read? Choose a number please: "
      puts ""
      puts "Enter 'exit' to quit."
      puts ""
      puts "#{FunnyArticle::Article.return_article(gets.strip)}"
      puts "**************************"
      puts ""
      restart
      exit
    end
  end 

  def restart
    puts "Would you like to restart? Enter y/n"
    if gets.strip == "y"
      begin_now
    else
      puts "GoodBye!!!!"
    end 
  end
end
 