require "nokogiri"
require "pry"
require "./guts/video_game.rb"
require "./guts/scraper.rb"

class CLI 
  
  def letsstartthis
    tell_them_howdy
    #Scraper.scrape_game_list
    print_game_from_number
    show_that_menu
    puts "Sayounara, folks!"
  end
  
  def tell_them_howdy
    puts "So, I heard you're interested in some video games?"
    puts "Where do you want to start, buddy?"
    puts "Pick a number between 1 and 100. Lets go!"
 end
 
 def show_that_menu
   input = ""
   
   while input != "exit" do
     
    puts "So, I heard you're interested in some video games?"
    puts "Where do you want to start, buddy?"
    puts "Pick a number between 1 and 100. Lets go!"
     
     
     input = gets.strip.downcase
     
     if (1..100).include?(input.to_i)
     one_game = VideoGame.list[input.to_i-1]
     Scraper.scrape_video_games(game)
   else 
    
    ### need some shit here.
  end

  def print_game_from_number
    puts ""
    puts "What range of games do you want to see, player?"
    puts "Enter a number between 1-100"
    puts "I'll show you a few before and after your number, cool?"
    picked_number = gets.strip.to_i-1
    puts ""
    puts "Games #{picked_number-5} - #{picked_number+5}"
    puts ""
    VideoGame.list[picked_number-1,10].each.with_index(picked_number) do |game, index|
      puts "#{index}. #{game.name}"
    end
  end
end
    
    
ClI.letsstartthis
