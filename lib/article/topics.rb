
class FunnyArticle::Topics 
  
  @@list = [
    {"politics" => 'http://www.theonion.com/section/politics/'},
    {"sports" => 'http://www.theonion.com/section/sports/'}, 
    {"local"=> 'http://www.theonion.com/section/local/'}, 
    {"business" => 'http://www.theonion.com/section/business'}, 
    {"entertainment" => 'http://www.theonion.com/section/entertainment/'}, 
    {"science technology" => 'http://www.theonion.com/section/science-technology/'}, 
    {"after birth" => 'http://www.theonion.com/section/after-birth'}]

  def correct_hash
    @correct_hash
  end

  def self.print_all_topics
    @@list.each.with_index do |topic,index|
      puts "#{index+1}: #{topic.keys[0]}"
    end
  end

  def self.intake(puts_info)
    if puts_info == 'exit'
      end_now
    end
    FunnyArticle::Article.new(@@list[puts_info.to_i - 1])
  end

  def end_now
    puts "GoodBye!!!" 
    exit
  end 
end 

